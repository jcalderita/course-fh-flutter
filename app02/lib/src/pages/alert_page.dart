import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () => _mostrarAlerta(context),
            child: const Text('Mostrar Alerta'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              shape: const StadiumBorder(),
              backgroundColor: Colors.blue,
            )
            // style: ButtonStyle(
            //     foregroundColor:
            //         MaterialStateColor.resolveWith((states) => Colors.white),
            //     backgroundColor:
            //         MaterialStateColor.resolveWith((states) => Colors.blue)),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.home),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(
                size: 50,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Ok'))
          ],
        );
      },
      barrierDismissible: true);
}
