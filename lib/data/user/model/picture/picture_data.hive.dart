// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PictureDataImplAdapter extends TypeAdapter<_$PictureDataImpl> {
  @override
  final int typeId = 3;

  @override
  _$PictureDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PictureDataImpl(
      large: fields[0] as String,
      medium: fields[1] as String,
      thumbnail: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$PictureDataImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.large)
      ..writeByte(1)
      ..write(obj.medium)
      ..writeByte(2)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PictureDataImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
