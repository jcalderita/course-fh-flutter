import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final _estilo = const TextStyle(fontSize: 25.0);
  final int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        centerTitle: true,
        // backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Número de clicks",
              style: _estilo,
            ),
            Text(
              '$_contador',
              style: _estilo,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
