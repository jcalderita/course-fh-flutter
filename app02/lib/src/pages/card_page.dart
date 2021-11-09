import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.home,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título de esta tarjeta.'),
            subtitle: Text(
                'Aquí estamos con la descripción de la tarjeta para ver como queda el texto super enorme dentro de la tarjeta y que sea subtítulo.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
                style: TextButton.styleFrom(primary: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('No se que poner.'))
        ],
      ),
    );
  }
}
