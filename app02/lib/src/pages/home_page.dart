import 'package:flutter/material.dart';

import 'package:app02/src/utils/icono_string_util.dart';
import 'package:app02/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data ?? [], context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) => data
      .map((e) => Column(
            children: [
              ListTile(
                title: Text(e['texto']),
                leading: getIcon(e['icon']),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.pushNamed(context, e['ruta']);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AlertPage()));
                },
              ),
              const Divider()
            ],
          ))
      .toList();
}
