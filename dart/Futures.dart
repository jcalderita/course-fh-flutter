void main() {
  print('Estamos a punto de pedir datos');
  
  httpGet('https://api.holamundo').then((data) {
    print(data);
  });
  
  print('Finalizado');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 4), (){
    return 'Hola Mundo';
  });
}