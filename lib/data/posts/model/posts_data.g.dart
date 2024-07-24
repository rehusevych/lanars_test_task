// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsDataImpl _$$PostsDataImplFromJson(Map<String, dynamic> json) =>
    _$PostsDataImpl(
      id: (json['id'] as num).toInt(),
      photographer: json['photographer'] as String,
      src: SourceData.fromJson(json['src'] as Map<String, dynamic>),
      alt: json['alt'] as String? ?? "",
    );

Map<String, dynamic> _$$PostsDataImplToJson(_$PostsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photographer': instance.photographer,
      'src': instance.src,
      'alt': instance.alt,
    };
