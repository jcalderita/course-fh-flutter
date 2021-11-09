import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.home),
      ),
    );
  }
}
