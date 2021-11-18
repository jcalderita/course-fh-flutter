import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlicer = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            // _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        divisions: 20,
        value: _valorSlicer,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloquearCheck)
            ? null
            : (e) {
                setState(() {
                  _valorSlicer = e;
                });
              });
  }

  // Widget _crearCheckBox() {
  //   return CheckboxListTile(
  //       title: const Text('Bloquear slider'),
  //       value: _bloquearCheck,
  //       onChanged: (e) {
  //         setState(() {
  //           _bloquearCheck = e ?? false;
  //         });
  //       });
  // }

  Widget _crearImagen() {
    return Image(
        width: _valorSlicer,
        fit: BoxFit.contain,
        image: const NetworkImage(
            'http://pngimg.com/uploads/batman/batman_PNG111.png'));
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: const Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (e) {
          setState(() {
            _bloquearCheck = e;
          });
        });
  }
}
