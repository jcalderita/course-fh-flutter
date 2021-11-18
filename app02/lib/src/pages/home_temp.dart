import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsShort(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List.empty(growable: true);
    for (String opt in opciones) {
      final Widget tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsShort() => opciones
      .map((e) => Column(
            children: [
              ListTile(
                title: Text(e),
                subtitle: const Text('Es un número.'),
                leading: const Icon(Icons.accessibility),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
              const Divider(),
            ],
          ))
      .toList();
}
