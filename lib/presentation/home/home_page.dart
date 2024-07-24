import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/bloc/posts/cubit.dart';
import 'package:lanars_test_task/bloc/user/cubit.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/constants/duration.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';
import 'package:lanars_test_task/presentation/home/utils/sort_order.dart';
import 'package:lanars_test_task/presentation/home/widgets/post_item.dart';
import 'package:lanars_test_task/presentation/widgets/appbar/appbar.dart';
import 'package:lanars_test_task/presentation/widgets/background/page_background.dart';
import 'package:lanars_test_task/presentation/widgets/drawer/drawer.dart';
import 'package:lanars_test_task/presentation/widgets/empty/empty_page.dart';
import 'package:lanars_test_task/presentation/widgets/loading/app_spin_kit.dart';
import 'package:lanars_test_task/presentation/widgets/search_delegate/search_delegate.dart';

const double _iconSize = 30.0;
const double _scrollBarThickness = 5.0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  SortOrder _sortOrder = SortOrder.descending;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: unFocus,
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          return PageBackground(
            drawer: buildDrawer(
              context,
              data: state.maybeWhen(
                orElse: () => null,
                loaded: (user) => user,
              ),
            ),
            child: PrimaryScrollController(
              controller: _scrollController,
              child: CupertinoScrollbar(
                thickness: _scrollBarThickness,
                radius: const Radius.circular(appBorderRadius),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    BlocBuilder<PostsCubit, PostsState>(
                      builder: (context, state) {
                        return _buildHeader(
                          context,
                          state,
                        );
                      },
                    ),
                    CupertinoSliverRefreshControl(
                      onRefresh: () => _onRefresh(context),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(height: lightSpace.h),
                    ),
                    SliverToBoxAdapter(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(
                            _sortOrder == SortOrder.ascending
                                ? CupertinoIcons.sort_up
                                : CupertinoIcons.sort_down,
                          ),
                          onPressed: () => _onChangeSort(context),
                        ),
                      ),
                    ),
                    BlocBuilder<PostsCubit, PostsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SliverToBoxAdapter(),
                          loading: (_, __) => const SliverToBoxAdapter(
                            child: AppSpinKit(),
                          ),
                          empty: (_, __) => _buildEmpty(context),
                          loaded: (data, page) {
                            return SliverList(
                              delegate: SliverChildListDelegate(
                                List.generate(
                                  data.keys.length,
                                  growable: false,
                                  (index) {
                                    final key = _sortOrder ==
                                            SortOrder.ascending
                                        ? data.keys.reversed.elementAt(index)
                                        : data.keys.elementAt(index);
                                    return Column(
                                      children: [
                                        ...data[key]!.mapIndexed(
                                          (index, post) => _buildPostItem(
                                            context,
                                            post,
                                            key,
                                            index,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(height: (doubleLargeSpace * 2).h),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    PostsState state,
  ) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CollapsedHeaderDelegate(
        topPadding: (doubleLightSpace * 2).h,
        title: context.s.listPage,
        titleAlign: 1.1,
        backgroundColor: Colors.transparent,
        titleLines: 1,
        leadingBuilder: (context, offset) => IconButton(
          iconSize: _iconSize.sp,
          splashRadius: 30,
          icon: Icon(
            Icons.menu_rounded,
            size: _iconSize.sp,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        trailingBuilder: (context, offset) => IconButton(
          iconSize: _iconSize.sp,
          splashRadius: 30,
          icon: Icon(
            Icons.search,
            size: _iconSize.sp,
          ),
          onPressed: () {
            final postsList = <PostsData>[];

            for (final posts in state.data.values) {
              postsList.addAll(posts);
            }
            showSearch(
                context: context,
                delegate: CustomSearchDelegate(posts: postsList));
          },
        ),
      ),
    );
  }

  Widget _buildPostItem(
    BuildContext context,
    PostsData post,
    String letter,
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: halfLightSpace, horizontal: largeSpace),
      child: Stack(
        children: [
          PostItem(
            title: post.photographer,
            subtitle: post.alt,
            image: post.src.small,
            onPressed: () => openPhotoFullSize(
              context,
              path: post.src.large,
            ),
          ),
          index == 0
              ? Positioned(
                  left: mediumSpace.w,
                  top: -halfLightSpace.h,
                  child: Text(
                    letter,
                    style: context.appTextTheme.h5,
                  ),
                )
              : SizedBox(
                  width:
                      calculateTextWidth(context.appTextTheme.h5, text: letter)
                          .w,
                ),
        ],
      ),
    );
  }

  Widget _buildEmpty(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.23),
        child: EmptyPage(
          icon: const Icon(
            Icons.post_add,
            size: 48,
          ),
          title: context.s.noPosts,
          info: context.s.thereAreCurrentlyNoPosts,
        ),
      ),

      // ),
    );
  }

  void _onChangeSort(BuildContext context) {
    setState(() {
      switch (_sortOrder) {
        case SortOrder.ascending:
          _sortOrder = SortOrder.descending;
          break;
        case SortOrder.descending:
          _sortOrder = SortOrder.ascending;
          break;
      }
    });
  }

  Future<void> _onRefresh(BuildContext context) {
    context.read<PostsCubit>().getData(forceReload: true);
    return Future.delayed(refreshDuration);
  }
}
