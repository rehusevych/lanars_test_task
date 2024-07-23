// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NameData _$NameDataFromJson(Map<String, dynamic> json) {
  return _NameData.fromJson(json);
}

/// @nodoc
mixin _$NameData {
  String get title => throw _privateConstructorUsedError;
  String get first => throw _privateConstructorUsedError;
  String get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameDataCopyWith<NameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameDataCopyWith<$Res> {
  factory $NameDataCopyWith(NameData value, $Res Function(NameData) then) =
      _$NameDataCopyWithImpl<$Res, NameData>;
  @useResult
  $Res call({String title, String first, String last});
}

/// @nodoc
class _$NameDataCopyWithImpl<$Res, $Val extends NameData>
    implements $NameDataCopyWith<$Res> {
  _$NameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? first = null,
    Object? last = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameDataImplCopyWith<$Res>
    implements $NameDataCopyWith<$Res> {
  factory _$$NameDataImplCopyWith(
          _$NameDataImpl value, $Res Function(_$NameDataImpl) then) =
      __$$NameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String first, String last});
}

/// @nodoc
class __$$NameDataImplCopyWithImpl<$Res>
    extends _$NameDataCopyWithImpl<$Res, _$NameDataImpl>
    implements _$$NameDataImplCopyWith<$Res> {
  __$$NameDataImplCopyWithImpl(
      _$NameDataImpl _value, $Res Function(_$NameDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? first = null,
    Object? last = null,
  }) {
    return _then(_$NameDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameDataImpl implements _NameData {
  const _$NameDataImpl(
      {required this.title, required this.first, required this.last});

  factory _$NameDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameDataImplFromJson(json);

  @override
  final String title;
  @override
  final String first;
  @override
  final String last;

  @override
  String toString() {
    return 'NameData(title: $title, first: $first, last: $last)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, first, last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameDataImplCopyWith<_$NameDataImpl> get copyWith =>
      __$$NameDataImplCopyWithImpl<_$NameDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameDataImplToJson(
      this,
    );
  }
}

abstract class _NameData implements NameData {
  const factory _NameData(
      {required final String title,
      required final String first,
      required final String last}) = _$NameDataImpl;

  factory _NameData.fromJson(Map<String, dynamic> json) =
      _$NameDataImpl.fromJson;

  @override
  String get title;
  @override
  String get first;
  @override
  String get last;
  @override
  @JsonKey(ignore: true)
  _$$NameDataImplCopyWith<_$NameDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
