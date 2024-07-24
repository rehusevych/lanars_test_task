// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsState {
  Map<String, List<PostsData>> get data => throw _privateConstructorUsedError;
  PageData get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loading,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        empty,
    required TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)
        failed,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, List<PostsData>> data, PageData page)?
        loading,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult? Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loading,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
  @useResult
  $Res call({Map<String, List<PostsData>> data, PageData page});

  $PageDataCopyWith<$Res> get page;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PostsData>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData,
    ) as $Val);
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
abstract class _$$LoadingImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<PostsData>> data, PageData page});

  @override
  $PageDataCopyWith<$Res> get page;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
  }) {
    return _then(_$LoadingImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PostsData>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final Map<String, List<PostsData>> data = const {"": <PostsData>[]},
      this.page = const PageData()})
      : _data = data;

  final Map<String, List<PostsData>> _data;
  @override
  @JsonKey()
  Map<String, List<PostsData>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey()
  final PageData page;

  @override
  String toString() {
    return 'PostsState.loading(data: $data, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loading,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        empty,
    required TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)
        failed,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loaded,
  }) {
    return loading(data, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, List<PostsData>> data, PageData page)?
        loading,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult? Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? loaded,
  }) {
    return loading?.call(data, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loading,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PostsState {
  const factory _Loading(
      {final Map<String, List<PostsData>> data,
      final PageData page}) = _$LoadingImpl;

  @override
  Map<String, List<PostsData>> get data;
  @override
  PageData get page;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<PostsData>> data, PageData page});

  @override
  $PageDataCopyWith<$Res> get page;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
  }) {
    return _then(_$EmptyImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PostsData>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData,
    ));
  }
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl(
      {required final Map<String, List<PostsData>> data, required this.page})
      : _data = data;

  final Map<String, List<PostsData>> _data;
  @override
  Map<String, List<PostsData>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final PageData page;

  @override
  String toString() {
    return 'PostsState.empty(data: $data, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loading,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        empty,
    required TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)
        failed,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loaded,
  }) {
    return empty(data, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, List<PostsData>> data, PageData page)?
        loading,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult? Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? loaded,
  }) {
    return empty?.call(data, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loading,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(data, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements PostsState {
  const factory _Empty(
      {required final Map<String, List<PostsData>> data,
      required final PageData page}) = _$EmptyImpl;

  @override
  Map<String, List<PostsData>> get data;
  @override
  PageData get page;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<PostsData>> data, PageData page, Failure failure});

  @override
  $PageDataCopyWith<$Res> get page;
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
    Object? failure = null,
  }) {
    return _then(_$FailedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PostsData>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(
      {required final Map<String, List<PostsData>> data,
      required this.page,
      required this.failure})
      : _data = data;

  final Map<String, List<PostsData>> _data;
  @override
  Map<String, List<PostsData>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final PageData page;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'PostsState.failed(data: $data, page: $page, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), page, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loading,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        empty,
    required TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)
        failed,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loaded,
  }) {
    return failed(data, page, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, List<PostsData>> data, PageData page)?
        loading,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult? Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? loaded,
  }) {
    return failed?.call(data, page, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loading,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(data, page, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PostsState {
  const factory _Failed(
      {required final Map<String, List<PostsData>> data,
      required final PageData page,
      required final Failure failure}) = _$FailedImpl;

  @override
  Map<String, List<PostsData>> get data;
  @override
  PageData get page;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<PostsData>> data, PageData page});

  @override
  $PageDataCopyWith<$Res> get page;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? page = null,
  }) {
    return _then(_$LoadedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PostsData>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final Map<String, List<PostsData>> data, required this.page})
      : _data = data;

  final Map<String, List<PostsData>> _data;
  @override
  Map<String, List<PostsData>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final PageData page;

  @override
  String toString() {
    return 'PostsState.loaded(data: $data, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loading,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        empty,
    required TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)
        failed,
    required TResult Function(Map<String, List<PostsData>> data, PageData page)
        loaded,
  }) {
    return loaded(data, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, List<PostsData>> data, PageData page)?
        loading,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult? Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult? Function(Map<String, List<PostsData>> data, PageData page)? loaded,
  }) {
    return loaded?.call(data, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loading,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? empty,
    TResult Function(
            Map<String, List<PostsData>> data, PageData page, Failure failure)?
        failed,
    TResult Function(Map<String, List<PostsData>> data, PageData page)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PostsState {
  const factory _Loaded(
      {required final Map<String, List<PostsData>> data,
      required final PageData page}) = _$LoadedImpl;

  @override
  Map<String, List<PostsData>> get data;
  @override
  PageData get page;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
