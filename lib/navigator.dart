import 'package:fixed_bottom_nav_bar/pages/post.dart';
import 'package:flutter/material.dart';

class MyNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/post':
        return MaterialPageRoute(builder: (_) => const PostPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(),
                  body: const Center(
                    child: Text('404'),
                  ),
                ));
    }
  }
}
