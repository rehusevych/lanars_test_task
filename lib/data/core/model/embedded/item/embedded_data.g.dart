// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embedded_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmbeddedItemData<T> _$EmbeddedItemDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    EmbeddedItemData<T>(
      item: _$nullableGenericFromJson(json['item'], fromJsonT),
    );

Map<String, dynamic> _$EmbeddedItemDataToJson<T>(
  EmbeddedItemData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'item': _$nullableGenericToJson(instance.item, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
