import 'package:fixed_bottom_nav_bar/navigator.dart';
import 'package:fixed_bottom_nav_bar/pages/home.dart';
import 'package:fixed_bottom_nav_bar/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FixedTabBar extends StatelessWidget {
  const FixedTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          border: const Border(
              top: BorderSide(
                  color: Colors.blue, width: 1, style: BorderStyle.solid)),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                onGenerateRoute: MyNavigator.onGenerateRoute,
                builder: (context) => const CupertinoPageScaffold(
                  child: HomePage(),
                ),
              );
            case 1:
              return CupertinoTabView(
                onGenerateRoute: MyNavigator.onGenerateRoute,
                builder: (context) => const CupertinoPageScaffold(
                  child: ProfilePage(),
                ),
              );
            default:
              return CupertinoTabView(
                builder: (context) => const CupertinoPageScaffold(
                  child: Scaffold(
                    body: Center(
                      child: Text('404'),
                    ),
                  ),
                ),
              );
          }
        });
  }
}
