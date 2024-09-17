// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDataImplAdapter extends TypeAdapter<_$UserDataImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserDataImpl(
      id: fields[0] as IdData,
      name: fields[1] as NameData,
      email: fields[2] as String,
      gender: fields[3] as String?,
      phone: fields[4] as String?,
      cell: fields[5] as String?,
      picture: fields[6] as PictureData?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserDataImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.cell)
      ..writeByte(6)
      ..write(obj.picture);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
