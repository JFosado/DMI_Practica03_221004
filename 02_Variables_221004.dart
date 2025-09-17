late double currentAvg;

void main() {
  print('¡Fundamentos de Dart!');

  //? 1. Declaración de variables
  var myName = "Jazzo";
  var age = 21; //* Mejor usar int para edad
  bool isStudent = true;

  //? 2. Interpolación (lectura de valores almacenados)
  print("Hola, $myName");

  //? 3. Analizando tipos de datos
  print("----");
  print("El valor de nombre es: $myName y su tipo de dato es: ${myName.runtimeType}");
  print("El valor de edad es: $age y su tipo de dato es: ${age.runtimeType}");
  print("¿Es estudiante? $isStudent");

  //? Constantes y variables
  final double average = 5.5;
  print("Promedio fijo: $average");
  
  // print("¿currentAvg tiene valor? ${currentAvg == null}"); // No es necesario, currentAvg no puede ser null

  const String testing = "Este valor no cambia";
  print(testing);

  int valueChange = 10; //* Este valor puede cambiar
  print("Valor inicial que puede cambiar: $valueChange");
  valueChange += 5; //* Cambio de valor
  print("Valor actualizado: $valueChange");

  //? 4. Acceso a métodos primitivos
  print("Valor inicial de myName: $myName");
  print("En mayúsculas: ${myName.toUpperCase()}"); //* Corregido .toUpperCase()

  //? Ejecuciones anidadas y concatenaciones
  print("Suma 1 + 1 = ${1 + 1}");
  print("Concatenación de strings: " + "1" + "1");
  //? print(1 + "1"); // Esto da error porque Dart no permite sumar int + String
}