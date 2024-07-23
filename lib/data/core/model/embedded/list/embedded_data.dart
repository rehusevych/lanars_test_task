import 'package:freezed_annotation/freezed_annotation.dart';

part 'embedded_data.freezed.dart';
part 'embedded_data.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class EmbeddedListData<T> with _$EmbeddedListData<T> {
  const factory EmbeddedListData({
    @Default([]) List<T> items,
  }) = _EmbeddedListData;

  factory EmbeddedListData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    String field,
  ) {
    return EmbeddedListData(
      items: (json[field] as List).map(fromJsonT).toList(),
    );
  }
}
