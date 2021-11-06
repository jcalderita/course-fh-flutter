import 'package:flutter/material.dart';

import 'package:app01/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Center(child: Text('Hola Mundo')),
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
