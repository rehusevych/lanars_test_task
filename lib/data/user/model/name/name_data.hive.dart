// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NameDataImplAdapter extends TypeAdapter<_$NameDataImpl> {
  @override
  final int typeId = 2;

  @override
  _$NameDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NameDataImpl(
      title: fields[0] as String,
      first: fields[1] as String,
      last: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$NameDataImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.first)
      ..writeByte(2)
      ..write(obj.last);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameDataImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
