// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: IdData.fromJson(json['id'] as Map<String, dynamic>),
      name: NameData.fromJson(json['name'] as Map<String, dynamic>),
      email: json['email'] as String,
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      cell: json['cell'] as String?,
      picture: json['picture'] == null
          ? null
          : PictureData.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'phone': instance.phone,
      'cell': instance.cell,
      'picture': instance.picture,
    };
