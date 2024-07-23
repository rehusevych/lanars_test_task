// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageDataImpl _$$PageDataImplFromJson(Map<String, dynamic> json) =>
    _$PageDataImpl(
      size: (json['size'] as num?)?.toInt() ?? pageSize,
      totalElements: (json['totalElements'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
      number: (json['number'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PageDataImplToJson(_$PageDataImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'number': instance.number,
    };
