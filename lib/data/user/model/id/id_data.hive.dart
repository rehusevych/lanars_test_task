// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IdDataImplAdapter extends TypeAdapter<_$IdDataImpl> {
  @override
  final int typeId = 1;

  @override
  _$IdDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$IdDataImpl(
      name: fields[0] as String?,
      value: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$IdDataImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdDataImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
