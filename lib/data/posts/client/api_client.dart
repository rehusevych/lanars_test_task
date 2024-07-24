import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:lanars_test_task/data/core/constants/constants.dart';
import 'package:lanars_test_task/data/core/http.dart';

import 'package:lanars_test_task/data/core/model/page/page.dart';
import 'package:lanars_test_task/data/core/model/pagination_data/pagination_data.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class PostsApiClient {
  factory PostsApiClient(Dio dio) = _PostsApiClient;

  @GET("$apiVersion/curated/")
  Future<PaginationData<PostsData>> getPosts(
    @Queries() PageData? page,
  );
}

PaginationData<PostsData> deserializePaginationData<T>(
  Map<String, dynamic> json,
) {
  return PaginationData<PostsData>.fromJson(
    json,
    (json) => PostsData.fromJson(json as Map<String, dynamic>),
    EmbeddedType.photos,
  );
}

Map<String, dynamic>? serializePageData(PageData? pageData) =>
    pageData?.toQueries();
