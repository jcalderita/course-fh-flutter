void main() {
  final superman = Heroe();
  superman.nombre = 'Karl El';
  superman.poder = 'Super';  
}



class Personaje {
  String poder = '';
  String nombre = '';
}

class Heroe extends Personaje {
  int valentia = 0;
}