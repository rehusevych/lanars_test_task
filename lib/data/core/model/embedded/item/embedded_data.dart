import 'package:freezed_annotation/freezed_annotation.dart';

part 'embedded_data.g.dart';
part 'embedded_data.freezed.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class EmbeddedItemData<T> with _$EmbeddedItemData<T> {
  const factory EmbeddedItemData({T? item}) = _EmbeddedItemData;

  factory EmbeddedItemData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    String field,
  ) {
    return EmbeddedItemData(
      item: fromJsonT(json[field]),
    );
  }
}
