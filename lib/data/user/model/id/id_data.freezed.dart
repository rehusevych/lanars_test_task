// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdData _$IdDataFromJson(Map<String, dynamic> json) {
  return _IdData.fromJson(json);
}

/// @nodoc
mixin _$IdData {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdDataCopyWith<IdData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdDataCopyWith<$Res> {
  factory $IdDataCopyWith(IdData value, $Res Function(IdData) then) =
      _$IdDataCopyWithImpl<$Res, IdData>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$IdDataCopyWithImpl<$Res, $Val extends IdData>
    implements $IdDataCopyWith<$Res> {
  _$IdDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdDataImplCopyWith<$Res> implements $IdDataCopyWith<$Res> {
  factory _$$IdDataImplCopyWith(
          _$IdDataImpl value, $Res Function(_$IdDataImpl) then) =
      __$$IdDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$IdDataImplCopyWithImpl<$Res>
    extends _$IdDataCopyWithImpl<$Res, _$IdDataImpl>
    implements _$$IdDataImplCopyWith<$Res> {
  __$$IdDataImplCopyWithImpl(
      _$IdDataImpl _value, $Res Function(_$IdDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$IdDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdDataImpl implements _IdData {
  const _$IdDataImpl({required this.name, required this.value});

  factory _$IdDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdDataImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'IdData(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdDataImplCopyWith<_$IdDataImpl> get copyWith =>
      __$$IdDataImplCopyWithImpl<_$IdDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdDataImplToJson(
      this,
    );
  }
}

abstract class _IdData implements IdData {
  const factory _IdData(
      {required final String name, required final String value}) = _$IdDataImpl;

  factory _IdData.fromJson(Map<String, dynamic> json) = _$IdDataImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$IdDataImplCopyWith<_$IdDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
