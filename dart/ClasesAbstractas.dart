void main() {
  final perro = Perro();
  perro.emitirSonido();
}

abstract class Animal {
  int patas = 0;
  
  void emitirSonido();
}

class Perro implements Animal {

  @override
  int patas = 4;
  int colas = 1;
  
  @override
  void emitirSonido() => print('Guau');
}