// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @HiveField(0)
  IdData get id => throw _privateConstructorUsedError;
  @HiveField(1)
  NameData get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get gender => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get cell => throw _privateConstructorUsedError;
  @HiveField(6)
  PictureData? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {@HiveField(0) IdData id,
      @HiveField(1) NameData name,
      @HiveField(2) String email,
      @HiveField(3) String? gender,
      @HiveField(4) String? phone,
      @HiveField(5) String? cell,
      @HiveField(6) PictureData? picture});

  $IdDataCopyWith<$Res> get id;
  $NameDataCopyWith<$Res> get name;
  $PictureDataCopyWith<$Res>? get picture;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? cell = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdData,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameData,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cell: freezed == cell
          ? _value.cell
          : cell // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdDataCopyWith<$Res> get id {
    return $IdDataCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameDataCopyWith<$Res> get name {
    return $NameDataCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PictureDataCopyWith<$Res>? get picture {
    if (_value.picture == null) {
      return null;
    }

    return $PictureDataCopyWith<$Res>(_value.picture!, (value) {
      return _then(_value.copyWith(picture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) IdData id,
      @HiveField(1) NameData name,
      @HiveField(2) String email,
      @HiveField(3) String? gender,
      @HiveField(4) String? phone,
      @HiveField(5) String? cell,
      @HiveField(6) PictureData? picture});

  @override
  $IdDataCopyWith<$Res> get id;
  @override
  $NameDataCopyWith<$Res> get name;
  @override
  $PictureDataCopyWith<$Res>? get picture;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? cell = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$UserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdData,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameData,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cell: freezed == cell
          ? _value.cell
          : cell // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: userDataTypeId)
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.email,
      @HiveField(3) this.gender,
      @HiveField(4) this.phone,
      @HiveField(5) this.cell,
      @HiveField(6) this.picture});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @HiveField(0)
  final IdData id;
  @override
  @HiveField(1)
  final NameData name;
  @override
  @HiveField(2)
  final String email;
  @override
  @HiveField(3)
  final String? gender;
  @override
  @HiveField(4)
  final String? phone;
  @override
  @HiveField(5)
  final String? cell;
  @override
  @HiveField(6)
  final PictureData? picture;

  @override
  String toString() {
    return 'UserData(id: $id, name: $name, email: $email, gender: $gender, phone: $phone, cell: $cell, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.cell, cell) || other.cell == cell) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, gender, phone, cell, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {@HiveField(0) required final IdData id,
      @HiveField(1) required final NameData name,
      @HiveField(2) required final String email,
      @HiveField(3) final String? gender,
      @HiveField(4) final String? phone,
      @HiveField(5) final String? cell,
      @HiveField(6) final PictureData? picture}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @HiveField(0)
  IdData get id;
  @override
  @HiveField(1)
  NameData get name;
  @override
  @HiveField(2)
  String get email;
  @override
  @HiveField(3)
  String? get gender;
  @override
  @HiveField(4)
  String? get phone;
  @override
  @HiveField(5)
  String? get cell;
  @override
  @HiveField(6)
  PictureData? get picture;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
