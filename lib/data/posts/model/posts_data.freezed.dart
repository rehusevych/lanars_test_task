// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostsData _$PostsDataFromJson(Map<String, dynamic> json) {
  return _PostsData.fromJson(json);
}

/// @nodoc
mixin _$PostsData {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get photographer => throw _privateConstructorUsedError;
  @HiveField(2)
  SourceData get src => throw _privateConstructorUsedError;
  @HiveField(3)
  String get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsDataCopyWith<PostsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsDataCopyWith<$Res> {
  factory $PostsDataCopyWith(PostsData value, $Res Function(PostsData) then) =
      _$PostsDataCopyWithImpl<$Res, PostsData>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String photographer,
      @HiveField(2) SourceData src,
      @HiveField(3) String alt});

  $SourceDataCopyWith<$Res> get src;
}

/// @nodoc
class _$PostsDataCopyWithImpl<$Res, $Val extends PostsData>
    implements $PostsDataCopyWith<$Res> {
  _$PostsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photographer = null,
    Object? src = null,
    Object? alt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SourceData,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceDataCopyWith<$Res> get src {
    return $SourceDataCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostsDataImplCopyWith<$Res>
    implements $PostsDataCopyWith<$Res> {
  factory _$$PostsDataImplCopyWith(
          _$PostsDataImpl value, $Res Function(_$PostsDataImpl) then) =
      __$$PostsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String photographer,
      @HiveField(2) SourceData src,
      @HiveField(3) String alt});

  @override
  $SourceDataCopyWith<$Res> get src;
}

/// @nodoc
class __$$PostsDataImplCopyWithImpl<$Res>
    extends _$PostsDataCopyWithImpl<$Res, _$PostsDataImpl>
    implements _$$PostsDataImplCopyWith<$Res> {
  __$$PostsDataImplCopyWithImpl(
      _$PostsDataImpl _value, $Res Function(_$PostsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photographer = null,
    Object? src = null,
    Object? alt = null,
  }) {
    return _then(_$PostsDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SourceData,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: postsDataTypeId)
class _$PostsDataImpl implements _PostsData {
  const _$PostsDataImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.photographer,
      @HiveField(2) required this.src,
      @HiveField(3) this.alt = ""});

  factory _$PostsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsDataImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String photographer;
  @override
  @HiveField(2)
  final SourceData src;
  @override
  @JsonKey()
  @HiveField(3)
  final String alt;

  @override
  String toString() {
    return 'PostsData(id: $id, photographer: $photographer, src: $src, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, photographer, src, alt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsDataImplCopyWith<_$PostsDataImpl> get copyWith =>
      __$$PostsDataImplCopyWithImpl<_$PostsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsDataImplToJson(
      this,
    );
  }
}

abstract class _PostsData implements PostsData {
  const factory _PostsData(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String photographer,
      @HiveField(2) required final SourceData src,
      @HiveField(3) final String alt}) = _$PostsDataImpl;

  factory _PostsData.fromJson(Map<String, dynamic> json) =
      _$PostsDataImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get photographer;
  @override
  @HiveField(2)
  SourceData get src;
  @override
  @HiveField(3)
  String get alt;
  @override
  @JsonKey(ignore: true)
  _$$PostsDataImplCopyWith<_$PostsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
