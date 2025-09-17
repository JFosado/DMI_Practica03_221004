void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Lucario',
    'hp': 120,
    'isAlive': true,
    'abilities': {1: "Puño Bala", 2: "Contra ataque", 3: "Puño hielo"},
    'sprites': <String>["images/Lucario/frontal_pose.png", "images/Lucario/back_pose.png"],
    'winRate': 0.0
  };

  print(pokemon);
  print("----------------------------------\n");
  
  pokemon['isAlive'] = pokemon['hp'] > 0;

  final String formattedAbilities = (pokemon['abilities'] as Map<int, String>).entries
      .map((entry) => 
        '${entry.key} (type: ${entry.key.runtimeType}): ${entry.value} (Tipo de Dato: ${entry.value.runtimeType})')
      .join('\n  '); 

  final String formattedSprites = (pokemon['sprites'] as List<String>)
      .asMap()
      .entries
      .map((entry) => '${entry.key + 1}: ${entry.value}  Tipo de Dato:  ${entry.value.runtimeType}') // Adding 1 to make it 1-indexed
      .join('\n  ');

  // Accediendo a las propiedades individuales del Mapa
  print("""
  POKEMON              Tipo de Dato:${pokemon.runtimeType}
  
  Nombre: ${pokemon['name']}           Tipo de dato: ${pokemon['name'].runtimeType}
  Vida: ${pokemon['hp']}                 Tipo de dato: ${pokemon['hp'].runtimeType}
  Status: ${pokemon['isAlive'] ? 'Vivo' : 'Derrotado'}              Tipo de dato: ${pokemon['isAlive'].runtimeType}
  
  Habilidades: ${pokemon['abilities'].runtimeType}
  ${formattedAbilities} 

  Sprites: ${pokemon['sprites'].runtimeType}
  ${formattedSprites}
  """);
}