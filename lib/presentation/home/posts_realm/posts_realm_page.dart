import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test_task/bloc/local_posts/cubit.dart';
import 'package:lanars_test_task/data/posts/posts_realm_repository.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/injectable.dart';
import 'package:lanars_test_task/presentation/home/widgets/photo_item.dart';

@RoutePage()
class PostsRealmPage extends StatelessWidget {
  const PostsRealmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsLocalCubit(
        postsRealmRepository: getIt.get<PostsRealmRepository>(),
      )..getData(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Realm database"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: doubleLargeSpace,
            ),
            Expanded(
              child: BlocBuilder<PostsLocalCubit, PostsLocalState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loaded: (data) => ListView.separated(
                      itemCount: data.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: doubleLargeSpace,
                      ),
                      itemBuilder: (context, index) {
                        final c = data[index];
                        return ListTile(
                          leading: PhotoItem(url: c.photoSrc),
                          title: Text(c.photographer),
                          onTap: () => context.read<PostsLocalCubit>().deletePostFromRealm(
                                data[index],
                              ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
