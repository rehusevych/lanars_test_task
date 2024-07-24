// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageDataImpl _$$PageDataImplFromJson(Map<String, dynamic> json) =>
    _$PageDataImpl(
      perPage: (json['per_page'] as num?)?.toInt() ?? pageSize,
      totalResults: (json['total_results'] as num?)?.toInt() ?? 0,
      nextPage: json['next_page'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PageDataImplToJson(_$PageDataImpl instance) =>
    <String, dynamic>{
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'next_page': instance.nextPage,
      'page': instance.page,
    };
