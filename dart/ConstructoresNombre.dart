import 'dart:convert';

void main(){
  final rawJson = '{"nombre":"Jorge", "poder":"Velocidad" }';
  final parsedJson = json.decode(rawJson);
  // print(parsedJson);
  
  final jorge = Heroe.fromJson(parsedJson);
  print(jorge);  
}

class Heroe {
  String nombre = '';
  String poder= '';
  
  Heroe({this.nombre = '', this.poder = ''});
  
  Heroe.fromJson(parsedJson) {    
    nombre = parsedJson['nombre'];    
    poder = parsedJson['poder']; 
  }
  
  @override
  String toString() => 'Nombre: $nombre - Poder: $poder';
}