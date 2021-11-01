void main() {
  String propiedad = 'soltero';

  Map<String, dynamic> persona = {
    'nombre': 'Jorge',
    'edad': 42,
    'soltero': true
  };

  print(persona);
  print(persona['nombre']);
  print(persona[propiedad]);

  Map<int, String> personas = {
    1: 'Jorge',
    2: 'Ana',
    9: 'Susana'
  };
  personas.addAll({4: 'María'});
  print(personas);
  print(personas[2]);
}