// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageData _$PageDataFromJson(Map<String, dynamic> json) {
  return _PageData.fromJson(json);
}

/// @nodoc
mixin _$PageData {
  int get size => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageDataCopyWith<PageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDataCopyWith<$Res> {
  factory $PageDataCopyWith(PageData value, $Res Function(PageData) then) =
      _$PageDataCopyWithImpl<$Res, PageData>;
  @useResult
  $Res call({int size, int totalElements, int totalPages, int number});
}

/// @nodoc
class _$PageDataCopyWithImpl<$Res, $Val extends PageData>
    implements $PageDataCopyWith<$Res> {
  _$PageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageDataImplCopyWith<$Res>
    implements $PageDataCopyWith<$Res> {
  factory _$$PageDataImplCopyWith(
          _$PageDataImpl value, $Res Function(_$PageDataImpl) then) =
      __$$PageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int size, int totalElements, int totalPages, int number});
}

/// @nodoc
class __$$PageDataImplCopyWithImpl<$Res>
    extends _$PageDataCopyWithImpl<$Res, _$PageDataImpl>
    implements _$$PageDataImplCopyWith<$Res> {
  __$$PageDataImplCopyWithImpl(
      _$PageDataImpl _value, $Res Function(_$PageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? number = null,
  }) {
    return _then(_$PageDataImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageDataImpl extends _PageData with DiagnosticableTreeMixin {
  const _$PageDataImpl(
      {this.size = pageSize,
      this.totalElements = 0,
      this.totalPages = 0,
      this.number = 0})
      : super._();

  factory _$PageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageDataImplFromJson(json);

  @override
  @JsonKey()
  final int size;
  @override
  @JsonKey()
  final int totalElements;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final int number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageData(size: $size, totalElements: $totalElements, totalPages: $totalPages, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageData'))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('totalElements', totalElements))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDataImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, size, totalElements, totalPages, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDataImplCopyWith<_$PageDataImpl> get copyWith =>
      __$$PageDataImplCopyWithImpl<_$PageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageDataImplToJson(
      this,
    );
  }
}

abstract class _PageData extends PageData {
  const factory _PageData(
      {final int size,
      final int totalElements,
      final int totalPages,
      final int number}) = _$PageDataImpl;
  const _PageData._() : super._();

  factory _PageData.fromJson(Map<String, dynamic> json) =
      _$PageDataImpl.fromJson;

  @override
  int get size;
  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$PageDataImplCopyWith<_$PageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
