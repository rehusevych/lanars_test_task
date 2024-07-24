import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test_task/data/core/model/embedded/list/embedded_data.dart';
import 'package:lanars_test_task/data/core/model/page/page.dart';

part 'pagination_data.g.dart';
part 'pagination_data.freezed.dart';

@freezed
@JsonSerializable(createFactory: false)
class PaginationData<T> with _$PaginationData<T> {
  const factory PaginationData({
    @Default(EmbeddedListData(items: [])) EmbeddedListData<T> embedded,
    @Default(PageData()) PageData page,
  }) = _PaginationData;

  factory PaginationData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    String field,
  ) {
    return PaginationData(
      embedded: EmbeddedListData.fromJson(json, fromJsonT, field),
      page: PageData.fromJson(json),
    );
  }
}
