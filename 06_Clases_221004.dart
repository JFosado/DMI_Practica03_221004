void main() {
  final Hero wolverine = Hero(name: "Logan", power: "Regeneracion");
  print("${wolverine}");
  print("""
  Nombre: ${wolverine.name} 
  Poder: ${wolverine.power}
  """);

  final Hero superman = Hero(
    name: "Clark Kent",
    power: "Fuerza Aumentada, Volar, Rayos Oculares, Aliento de Hielo",
  );
  print("${superman}");
  print("""
  Nombre: ${superman.name} 
  Poder: ${superman.power}
  """);
  
  final Hero batman = Hero(
    name: "Bruce Wayne");
  print("${batman}");
  print("""
  Nombre: ${batman.name} 
  Poder: ${batman.power}
  """);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "Sin poder"});
 @override
  String toString(){
    return '$name - $power';
  }
  
}



