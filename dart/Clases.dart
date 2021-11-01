void main(){
  final flash = Heroe(nombre: 'Jorge', poder: 'Velocidad');
  print(flash); 
  print(flash.nombre); 
  print(flash.poder);
}

class Heroe {
  String nombre;
  String poder;
  
  Heroe({this.nombre = '', this.poder = ''});
  
  @override
  String toString() => 'Nombre: $nombre - Poder: $poder';
}