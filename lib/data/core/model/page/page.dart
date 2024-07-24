import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.g.dart';

part 'page.freezed.dart';

const int pageSize = kDebugMode ? 20 : 50;

@freezed
class PageData with _$PageData {
  const PageData._();

  const factory PageData({
    @JsonKey(name: "per_page") @Default(pageSize) int perPage,
    @JsonKey(name: "total_results") @Default(0) int totalResults,
    @JsonKey(name: "next_page") @Default('') String nextPage,
    @Default(0) int page,
  }) = _PageData;

  bool get isLastPage => page * perPage <= totalResults;

  Map<String, dynamic> toQueries() {
    return <String, dynamic>{
      'page': page,
      'per_page': perPage,
    };
  }

  factory PageData.fromJson(Map<String, dynamic> json) =>
      _$PageDataFromJson(json);
}
