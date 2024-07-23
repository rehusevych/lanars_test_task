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
mixin _$EmbeddedListData<T> {
  List<T> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmbeddedListDataCopyWith<T, EmbeddedListData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddedListDataCopyWith<T, $Res> {
  factory $EmbeddedListDataCopyWith(
          EmbeddedListData<T> value, $Res Function(EmbeddedListData<T>) then) =
      _$EmbeddedListDataCopyWithImpl<T, $Res, EmbeddedListData<T>>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class _$EmbeddedListDataCopyWithImpl<T, $Res, $Val extends EmbeddedListData<T>>
    implements $EmbeddedListDataCopyWith<T, $Res> {
  _$EmbeddedListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbeddedListDataImplCopyWith<T, $Res>
    implements $EmbeddedListDataCopyWith<T, $Res> {
  factory _$$EmbeddedListDataImplCopyWith(_$EmbeddedListDataImpl<T> value,
          $Res Function(_$EmbeddedListDataImpl<T>) then) =
      __$$EmbeddedListDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$EmbeddedListDataImplCopyWithImpl<T, $Res>
    extends _$EmbeddedListDataCopyWithImpl<T, $Res, _$EmbeddedListDataImpl<T>>
    implements _$$EmbeddedListDataImplCopyWith<T, $Res> {
  __$$EmbeddedListDataImplCopyWithImpl(_$EmbeddedListDataImpl<T> _value,
      $Res Function(_$EmbeddedListDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$EmbeddedListDataImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$EmbeddedListDataImpl<T> implements _EmbeddedListData<T> {
  const _$EmbeddedListDataImpl({final List<T> items = const []})
      : _items = items;

  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'EmbeddedListData<$T>(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddedListDataImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddedListDataImplCopyWith<T, _$EmbeddedListDataImpl<T>> get copyWith =>
      __$$EmbeddedListDataImplCopyWithImpl<T, _$EmbeddedListDataImpl<T>>(
          this, _$identity);
}

abstract class _EmbeddedListData<T> implements EmbeddedListData<T> {
  const factory _EmbeddedListData({final List<T> items}) =
      _$EmbeddedListDataImpl<T>;

  @override
  List<T> get items;
  @override
  @JsonKey(ignore: true)
  _$$EmbeddedListDataImplCopyWith<T, _$EmbeddedListDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
