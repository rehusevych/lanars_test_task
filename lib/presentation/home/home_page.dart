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
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';
import 'package:lanars_test_task/presentation/home/widgets/post_item.dart';
import 'package:lanars_test_task/presentation/widgets/appbar/appbar.dart';
import 'package:lanars_test_task/presentation/widgets/background/page_background.dart';
import 'package:lanars_test_task/presentation/widgets/drawer/drawer.dart';
import 'package:lanars_test_task/presentation/widgets/search_delegate/search_delegate.dart';

const double _iconSize = 30.0;
const double _scrollBarThickness = 5.0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: unFocus,
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          return PageBackground(
            drawer: buildDrawer(
              context,
              data: state.maybeWhen(orElse: () => null, loaded: (user) => user),
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
                    SliverToBoxAdapter(
                      child: SizedBox(height: doubleLightSpace.h),
                    ),
                    BlocBuilder<PostsCubit, PostsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SliverToBoxAdapter(),
                          loaded: (data, page) => SliverList(
                            delegate: SliverChildListDelegate(
                              List.generate(
                                data.keys.length,
                                (index) {
                                  final key = data.keys.elementAt(index);
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
                          ),
                        );
                      },
                    ),
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
}
