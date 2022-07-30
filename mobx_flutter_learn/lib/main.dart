import 'package:flutter/material.dart';
import 'package:mobx_flutter_learn/Core/post/view/post_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostView(),
    );
  }
}
