// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_realm_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class PostsRealmModel extends _PostsRealmModel
    with RealmEntity, RealmObjectBase, RealmObject {
  PostsRealmModel(
    String id,
    String photographer,
    String photoSrc,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'photographer', photographer);
    RealmObjectBase.set(this, 'photoSrc', photoSrc);
  }

  PostsRealmModel._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get photographer =>
      RealmObjectBase.get<String>(this, 'photographer') as String;
  @override
  set photographer(String value) =>
      RealmObjectBase.set(this, 'photographer', value);

  @override
  String get photoSrc =>
      RealmObjectBase.get<String>(this, 'photoSrc') as String;
  @override
  set photoSrc(String value) => RealmObjectBase.set(this, 'photoSrc', value);

  @override
  Stream<RealmObjectChanges<PostsRealmModel>> get changes =>
      RealmObjectBase.getChanges<PostsRealmModel>(this);

  @override
  Stream<RealmObjectChanges<PostsRealmModel>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<PostsRealmModel>(this, keyPaths);

  @override
  PostsRealmModel freeze() =>
      RealmObjectBase.freezeObject<PostsRealmModel>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'photographer': photographer.toEJson(),
      'photoSrc': photoSrc.toEJson(),
    };
  }

  static EJsonValue _toEJson(PostsRealmModel value) => value.toEJson();
  static PostsRealmModel _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'photographer': EJsonValue photographer,
        'photoSrc': EJsonValue photoSrc,
      } =>
        PostsRealmModel(
          fromEJson(id),
          fromEJson(photographer),
          fromEJson(photoSrc),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(PostsRealmModel._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, PostsRealmModel, 'PostsRealmModel', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('photographer', RealmPropertyType.string),
      SchemaProperty('photoSrc', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
