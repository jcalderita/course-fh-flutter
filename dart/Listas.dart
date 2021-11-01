void main(){
  List<int> numeros=[1,2,3,4,5];
  print(numeros);
  numeros.add(6);
  print(numeros);

  List listaFija = List.filled(10,0);
  print(listaFija);
  listaFija[0] = 1;
  print(listaFija);
}