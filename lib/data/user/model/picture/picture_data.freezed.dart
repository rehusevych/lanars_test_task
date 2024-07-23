// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PictureData _$PictureDataFromJson(Map<String, dynamic> json) {
  return _PictureData.fromJson(json);
}

/// @nodoc
mixin _$PictureData {
  String get large => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureDataCopyWith<PictureData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureDataCopyWith<$Res> {
  factory $PictureDataCopyWith(
          PictureData value, $Res Function(PictureData) then) =
      _$PictureDataCopyWithImpl<$Res, PictureData>;
  @useResult
  $Res call({String large, String medium, String thumbnail});
}

/// @nodoc
class _$PictureDataCopyWithImpl<$Res, $Val extends PictureData>
    implements $PictureDataCopyWith<$Res> {
  _$PictureDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PictureDataImplCopyWith<$Res>
    implements $PictureDataCopyWith<$Res> {
  factory _$$PictureDataImplCopyWith(
          _$PictureDataImpl value, $Res Function(_$PictureDataImpl) then) =
      __$$PictureDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String large, String medium, String thumbnail});
}

/// @nodoc
class __$$PictureDataImplCopyWithImpl<$Res>
    extends _$PictureDataCopyWithImpl<$Res, _$PictureDataImpl>
    implements _$$PictureDataImplCopyWith<$Res> {
  __$$PictureDataImplCopyWithImpl(
      _$PictureDataImpl _value, $Res Function(_$PictureDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? thumbnail = null,
  }) {
    return _then(_$PictureDataImpl(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PictureDataImpl implements _PictureData {
  const _$PictureDataImpl(
      {required this.large, required this.medium, required this.thumbnail});

  factory _$PictureDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PictureDataImplFromJson(json);

  @override
  final String large;
  @override
  final String medium;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'PictureData(large: $large, medium: $medium, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureDataImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, medium, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureDataImplCopyWith<_$PictureDataImpl> get copyWith =>
      __$$PictureDataImplCopyWithImpl<_$PictureDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PictureDataImplToJson(
      this,
    );
  }
}

abstract class _PictureData implements PictureData {
  const factory _PictureData(
      {required final String large,
      required final String medium,
      required final String thumbnail}) = _$PictureDataImpl;

  factory _PictureData.fromJson(Map<String, dynamic> json) =
      _$PictureDataImpl.fromJson;

  @override
  String get large;
  @override
  String get medium;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$PictureDataImplCopyWith<_$PictureDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
