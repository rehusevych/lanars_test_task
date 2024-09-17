// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SourceDataImplAdapter extends TypeAdapter<_$SourceDataImpl> {
  @override
  final int typeId = 5;

  @override
  _$SourceDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SourceDataImpl(
      original: fields[0] as String,
      large: fields[1] as String,
      medium: fields[2] as String,
      small: fields[3] as String,
      portrait: fields[4] as String,
      tiny: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$SourceDataImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.original)
      ..writeByte(1)
      ..write(obj.large)
      ..writeByte(2)
      ..write(obj.medium)
      ..writeByte(3)
      ..write(obj.small)
      ..writeByte(4)
      ..write(obj.portrait)
      ..writeByte(5)
      ..write(obj.tiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceDataImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceDataImpl _$$SourceDataImplFromJson(Map<String, dynamic> json) =>
    _$SourceDataImpl(
      original: json['original'] as String,
      large: json['large'] as String,
      medium: json['medium'] as String,
      small: json['small'] as String,
      portrait: json['portrait'] as String,
      tiny: json['tiny'] as String,
    );

Map<String, dynamic> _$$SourceDataImplToJson(_$SourceDataImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'portrait': instance.portrait,
      'tiny': instance.tiny,
    };
