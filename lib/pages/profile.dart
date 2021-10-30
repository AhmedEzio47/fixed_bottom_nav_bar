import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile'),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/post'),
                child: const Text('Post'))
          ],
        ),
      ),
    );
  }
}
