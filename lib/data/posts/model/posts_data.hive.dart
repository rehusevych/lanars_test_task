// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsDataImplAdapter extends TypeAdapter<_$PostsDataImpl> {
  @override
  final int typeId = 4;

  @override
  _$PostsDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PostsDataImpl(
      id: fields[0] as int,
      photographer: fields[1] as String,
      src: fields[2] as SourceData,
      alt: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$PostsDataImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.photographer)
      ..writeByte(2)
      ..write(obj.src)
      ..writeByte(3)
      ..write(obj.alt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsDataImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
