import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estilo = const TextStyle(fontSize: 25.0);
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        centerTitle: true,
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
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: () => _operacion(_contador - 1),
          child: const Icon(
            Icons.remove,
          ),
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () => _operacion(0),
          child: const Icon(
            Icons.delete,
          ),
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () => _operacion(_contador + 1),
          child: const Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }

  void _operacion(int valor) {
    setState(() => _contador = valor);
  }
}
