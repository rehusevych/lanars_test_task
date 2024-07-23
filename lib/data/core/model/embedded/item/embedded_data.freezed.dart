// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embedded_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmbeddedItemData<T> {
  T? get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmbeddedItemDataCopyWith<T, EmbeddedItemData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddedItemDataCopyWith<T, $Res> {
  factory $EmbeddedItemDataCopyWith(
          EmbeddedItemData<T> value, $Res Function(EmbeddedItemData<T>) then) =
      _$EmbeddedItemDataCopyWithImpl<T, $Res, EmbeddedItemData<T>>;
  @useResult
  $Res call({T? item});
}

/// @nodoc
class _$EmbeddedItemDataCopyWithImpl<T, $Res, $Val extends EmbeddedItemData<T>>
    implements $EmbeddedItemDataCopyWith<T, $Res> {
  _$EmbeddedItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbeddedItemDataImplCopyWith<T, $Res>
    implements $EmbeddedItemDataCopyWith<T, $Res> {
  factory _$$EmbeddedItemDataImplCopyWith(_$EmbeddedItemDataImpl<T> value,
          $Res Function(_$EmbeddedItemDataImpl<T>) then) =
      __$$EmbeddedItemDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? item});
}

/// @nodoc
class __$$EmbeddedItemDataImplCopyWithImpl<T, $Res>
    extends _$EmbeddedItemDataCopyWithImpl<T, $Res, _$EmbeddedItemDataImpl<T>>
    implements _$$EmbeddedItemDataImplCopyWith<T, $Res> {
  __$$EmbeddedItemDataImplCopyWithImpl(_$EmbeddedItemDataImpl<T> _value,
      $Res Function(_$EmbeddedItemDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$EmbeddedItemDataImpl<T>(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$EmbeddedItemDataImpl<T> implements _EmbeddedItemData<T> {
  const _$EmbeddedItemDataImpl({this.item});

  @override
  final T? item;

  @override
  String toString() {
    return 'EmbeddedItemData<$T>(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddedItemDataImpl<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddedItemDataImplCopyWith<T, _$EmbeddedItemDataImpl<T>> get copyWith =>
      __$$EmbeddedItemDataImplCopyWithImpl<T, _$EmbeddedItemDataImpl<T>>(
          this, _$identity);
}

abstract class _EmbeddedItemData<T> implements EmbeddedItemData<T> {
  const factory _EmbeddedItemData({final T? item}) = _$EmbeddedItemDataImpl<T>;

  @override
  T? get item;
  @override
  @JsonKey(ignore: true)
  _$$EmbeddedItemDataImplCopyWith<T, _$EmbeddedItemDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
