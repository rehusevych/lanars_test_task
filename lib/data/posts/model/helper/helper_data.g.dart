// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helper_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsHelperDataAdapter extends TypeAdapter<PostsHelperData> {
  @override
  final int typeId = 6;

  @override
  PostsHelperData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostsHelperData(
      (fields[0] as List).cast<PostsData>(),
    );
  }

  @override
  void write(BinaryWriter writer, PostsHelperData obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsHelperDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
