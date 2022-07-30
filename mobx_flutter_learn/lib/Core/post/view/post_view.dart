// ignore_for_file: unused_field
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:mobx_flutter_learn/Core/post/view_model/post_view_model.dart';

class PostView extends StatelessWidget {
  PostView({Key? key}) : super(key: key);

  final _viewModel = PostViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.task_outlined),
        onPressed: () {
          _viewModel.getAllPost();
        },
      ),
      appBar: AppBar(
        title: const Text("Flutter Mobx"),
      ),
      body: Center(
        child: Observer(builder: (_) {
          return ListView.builder(
            itemCount: _viewModel.posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_viewModel.posts[index].title.toString()),
                subtitle: Text(_viewModel.posts[index].body.toString()),
                trailing: Text(_viewModel.posts[index].id.toString()),
              );
            },
          );
        }),
      ),
    );
  }
}
