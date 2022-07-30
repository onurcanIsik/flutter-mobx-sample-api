// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_flutter_learn/Core/post/model/post.dart';
part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  final url = "https://jsonplaceholder.typicode.com/posts";

  @observable
  List<Post> posts = [];

  @action
  Future<List<Post>?> getAllPost() async {
    try {
      final response = await Dio().get(url);
      posts = (response.data as List).map((x) => Post.fromJson(x)).toList();
    } catch (e) {
      throw Exception("Hata : ${e}");
    }
    return null;
  }
}
