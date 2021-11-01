void main(){
  print(saludar(nombre: 'Jorge', texto: 'Hola'));
  print(saludarFlecha(nombre: 'Runner', texto: 'Adios'));
}

String saludar({String texto = '', String nombre = ''}) {
  return '$texto $nombre';
}

String saludarFlecha({String texto = '', String nombre =''}) => '$texto $nombre';