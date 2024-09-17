import 'package:realm/realm.dart';

part 'posts_realm_model.realm.dart';

@RealmModel()
class _PostsRealmModel {
  @PrimaryKey()
  late String id;
  late String photographer;
  late String photoSrc;
}
