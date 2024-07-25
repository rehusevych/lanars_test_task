import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';
import 'package:lanars_test_task/presentation/home/widgets/post_item.dart';

const double _iconSize = 25.0;

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<PostsData> posts;

  CustomSearchDelegate({
    required this.posts,
  });

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          size: _iconSize.sp,
          color: AppColors.surface,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        size: _iconSize.sp,
        color: AppColors.surface,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<PostsData> searchResults = posts
        .where((item) =>
            item.photographer.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Padding(
      padding: EdgeInsets.only(top: doubleLightSpace.h),
      child: searchResults.isNotEmpty
          ? ListView.separated(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return PostItem(
                  title: searchResults[index].photographer,
                  subtitle: searchResults[index].alt,
                  image: searchResults[index].src.small,
                  padding: EdgeInsets.symmetric(horizontal: doubleLightSpace.w),
                  onPressed: () => openPhotoFullSize(
                    context,
                    path: searchResults[index].src.original,
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(height: lightSpace.h),
            )
          : _buildEmptyResults(context),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<PostsData> suggestionList = posts
        .where((item) =>
            item.photographer.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Column(
      children: [
        SizedBox(height: largeSpace.h),
        Divider(
          color: AppColors.surface,
          height: dividerHeight.h,
        ),
        SizedBox(height: doubleLightSpace.h),
        suggestionList.isNotEmpty
            ? Expanded(
                child: ListView.separated(
                  itemCount: suggestionList.length,
                  itemBuilder: (context, index) {
                    return PostItem(
                      title: suggestionList[index].photographer,
                      subtitle: suggestionList[index].alt,
                      image: suggestionList[index].src.small,
                      padding:
                          EdgeInsets.symmetric(horizontal: doubleLightSpace.w),
                      onPressed: () => openPhotoFullSize(
                        context,
                        path: suggestionList[index].src.original,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      SizedBox(height: lightSpace.h),
                ),
              )
            : _buildEmptyResults(context),
      ],
    );
  }

  Widget _buildEmptyResults(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: (doubleMediumSpace * 3).h),
      child: Text(
        context.s.noItemFound,
        style: context.appTextTheme.h3.paint(AppColors.secondary),
      ),
    );
  }
}
