// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginationData<T> {
  EmbeddedListData<T> get embedded => throw _privateConstructorUsedError;
  PageData get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationDataCopyWith<T, PaginationData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDataCopyWith<T, $Res> {
  factory $PaginationDataCopyWith(
          PaginationData<T> value, $Res Function(PaginationData<T>) then) =
      _$PaginationDataCopyWithImpl<T, $Res, PaginationData<T>>;
  @useResult
  $Res call({EmbeddedListData<T> embedded, PageData page});

  $EmbeddedListDataCopyWith<T, $Res> get embedded;
  $PageDataCopyWith<$Res> get page;
}

/// @nodoc
class _$PaginationDataCopyWithImpl<T, $Res, $Val extends PaginationData<T>>
    implements $PaginationDataCopyWith<T, $Res> {
  _$PaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? embedded = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      embedded: null == embedded
          ? _value.embedded
          : embedded // ignore: cast_nullable_to_non_nullable
              as EmbeddedListData<T>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmbeddedListDataCopyWith<T, $Res> get embedded {
    return $EmbeddedListDataCopyWith<T, $Res>(_value.embedded, (value) {
      return _then(_value.copyWith(embedded: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PageDataCopyWith<$Res> get page {
    return $PageDataCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationDataImplCopyWith<T, $Res>
    implements $PaginationDataCopyWith<T, $Res> {
  factory _$$PaginationDataImplCopyWith(_$PaginationDataImpl<T> value,
          $Res Function(_$PaginationDataImpl<T>) then) =
      __$$PaginationDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({EmbeddedListData<T> embedded, PageData page});

  @override
  $EmbeddedListDataCopyWith<T, $Res> get embedded;
  @override
  $PageDataCopyWith<$Res> get page;
}

/// @nodoc
class __$$PaginationDataImplCopyWithImpl<T, $Res>
    extends _$PaginationDataCopyWithImpl<T, $Res, _$PaginationDataImpl<T>>
    implements _$$PaginationDataImplCopyWith<T, $Res> {
  __$$PaginationDataImplCopyWithImpl(_$PaginationDataImpl<T> _value,
      $Res Function(_$PaginationDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? embedded = null,
    Object? page = null,
  }) {
    return _then(_$PaginationDataImpl<T>(
      embedded: null == embedded
          ? _value.embedded
          : embedded // ignore: cast_nullable_to_non_nullable
              as EmbeddedListData<T>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData,
    ));
  }
}

/// @nodoc

class _$PaginationDataImpl<T> implements _PaginationData<T> {
  const _$PaginationDataImpl(
      {this.embedded = const EmbeddedListData(items: []),
      this.page = const PageData()});

  @override
  @JsonKey()
  final EmbeddedListData<T> embedded;
  @override
  @JsonKey()
  final PageData page;

  @override
  String toString() {
    return 'PaginationData<$T>(embedded: $embedded, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDataImpl<T> &&
            (identical(other.embedded, embedded) ||
                other.embedded == embedded) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, embedded, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDataImplCopyWith<T, _$PaginationDataImpl<T>> get copyWith =>
      __$$PaginationDataImplCopyWithImpl<T, _$PaginationDataImpl<T>>(
          this, _$identity);
}

abstract class _PaginationData<T> implements PaginationData<T> {
  const factory _PaginationData(
      {final EmbeddedListData<T> embedded,
      final PageData page}) = _$PaginationDataImpl<T>;

  @override
  EmbeddedListData<T> get embedded;
  @override
  PageData get page;
  @override
  @JsonKey(ignore: true)
  _$$PaginationDataImplCopyWith<T, _$PaginationDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
