// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embedded_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmbeddedListData<T> _$EmbeddedListDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    EmbeddedListData<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$EmbeddedListDataToJson<T>(
  EmbeddedListData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
    };
