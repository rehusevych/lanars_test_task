// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceData _$SourceDataFromJson(Map<String, dynamic> json) {
  return _SourceData.fromJson(json);
}

/// @nodoc
mixin _$SourceData {
  @HiveField(0)
  String get original => throw _privateConstructorUsedError;
  @HiveField(1)
  String get large => throw _privateConstructorUsedError;
  @HiveField(2)
  String get medium => throw _privateConstructorUsedError;
  @HiveField(3)
  String get small => throw _privateConstructorUsedError;
  @HiveField(4)
  String get portrait => throw _privateConstructorUsedError;
  @HiveField(5)
  String get tiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceDataCopyWith<SourceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceDataCopyWith<$Res> {
  factory $SourceDataCopyWith(
          SourceData value, $Res Function(SourceData) then) =
      _$SourceDataCopyWithImpl<$Res, SourceData>;
  @useResult
  $Res call(
      {@HiveField(0) String original,
      @HiveField(1) String large,
      @HiveField(2) String medium,
      @HiveField(3) String small,
      @HiveField(4) String portrait,
      @HiveField(5) String tiny});
}

/// @nodoc
class _$SourceDataCopyWithImpl<$Res, $Val extends SourceData>
    implements $SourceDataCopyWith<$Res> {
  _$SourceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? tiny = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceDataImplCopyWith<$Res>
    implements $SourceDataCopyWith<$Res> {
  factory _$$SourceDataImplCopyWith(
          _$SourceDataImpl value, $Res Function(_$SourceDataImpl) then) =
      __$$SourceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String original,
      @HiveField(1) String large,
      @HiveField(2) String medium,
      @HiveField(3) String small,
      @HiveField(4) String portrait,
      @HiveField(5) String tiny});
}

/// @nodoc
class __$$SourceDataImplCopyWithImpl<$Res>
    extends _$SourceDataCopyWithImpl<$Res, _$SourceDataImpl>
    implements _$$SourceDataImplCopyWith<$Res> {
  __$$SourceDataImplCopyWithImpl(
      _$SourceDataImpl _value, $Res Function(_$SourceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? tiny = null,
  }) {
    return _then(_$SourceDataImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: postsSourceTypeId)
class _$SourceDataImpl implements _SourceData {
  const _$SourceDataImpl(
      {@HiveField(0) required this.original,
      @HiveField(1) required this.large,
      @HiveField(2) required this.medium,
      @HiveField(3) required this.small,
      @HiveField(4) required this.portrait,
      @HiveField(5) required this.tiny});

  factory _$SourceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceDataImplFromJson(json);

  @override
  @HiveField(0)
  final String original;
  @override
  @HiveField(1)
  final String large;
  @override
  @HiveField(2)
  final String medium;
  @override
  @HiveField(3)
  final String small;
  @override
  @HiveField(4)
  final String portrait;
  @override
  @HiveField(5)
  final String tiny;

  @override
  String toString() {
    return 'SourceData(original: $original, large: $large, medium: $medium, small: $small, portrait: $portrait, tiny: $tiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceDataImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, original, large, medium, small, portrait, tiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceDataImplCopyWith<_$SourceDataImpl> get copyWith =>
      __$$SourceDataImplCopyWithImpl<_$SourceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceDataImplToJson(
      this,
    );
  }
}

abstract class _SourceData implements SourceData {
  const factory _SourceData(
      {@HiveField(0) required final String original,
      @HiveField(1) required final String large,
      @HiveField(2) required final String medium,
      @HiveField(3) required final String small,
      @HiveField(4) required final String portrait,
      @HiveField(5) required final String tiny}) = _$SourceDataImpl;

  factory _SourceData.fromJson(Map<String, dynamic> json) =
      _$SourceDataImpl.fromJson;

  @override
  @HiveField(0)
  String get original;
  @override
  @HiveField(1)
  String get large;
  @override
  @HiveField(2)
  String get medium;
  @override
  @HiveField(3)
  String get small;
  @override
  @HiveField(4)
  String get portrait;
  @override
  @HiveField(5)
  String get tiny;
  @override
  @JsonKey(ignore: true)
  _$$SourceDataImplCopyWith<_$SourceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
