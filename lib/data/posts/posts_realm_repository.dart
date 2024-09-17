import 'package:injectable/injectable.dart';
import 'package:lanars_test_task/data/posts/model/posts_realm/posts_realm_model.dart';
import 'package:lanars_test_task/data/posts/service/local_realm.dart';

@Injectable()
class PostsRealmRepository {
  final ILocalStorage _localStorage;

  const PostsRealmRepository(this._localStorage);

  Future<void> addPost(PostsRealmModel user) async {
    await _localStorage.add(user);
  }

  Future<List<PostsRealmModel>> getAllPosts() async {
    return _localStorage.getAll<PostsRealmModel>().toList();
  }

  Future<void> addMultiplePost(List<PostsRealmModel> users) async {
    await _localStorage.addList(users);
  }

  Future<void> deletePost(PostsRealmModel user) async {
    await _localStorage.delete(user);
  }
}
