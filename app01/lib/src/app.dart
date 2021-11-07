import 'package:flutter/material.dart';

// import 'package:app01/src/pages/home_page.dart';
import 'package:app01/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Center(child: Text('Hola Mundo')),
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
        // child: HomePage(),
      ),
    );
  }
}
