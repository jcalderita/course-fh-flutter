void main() async {
  print('Estamos a punto de pedir datos');
  
  final data = await httpGet('https://api.holamundo');
  
  print(data);
  
  print('Finalizado');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 4), (){
    return 'Hola Mundo';
  });
}