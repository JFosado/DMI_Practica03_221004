void main() {
final numbers = [1,1,1,2,2,3,4,5,6,7,8,9,9,9,10];
  
 print(numbers);
  print ("Tipo de estructura de datos : ${numbers.runtimeType}");
  print("---------------------------\n");
  
  //Accediendo a propiedades y funciones de los objetos 
  print("Lista Original: $numbers");
  print("Tamaño de la Lista: ${numbers.length}");
  print("Valor en la posicion 0: ${numbers[0]}");
  print("Primer valor: ${numbers.first}");
  print("Orden reverso: ${numbers.reversed}");
  print("---------------------------\n");
  
final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  
final numbersGreaterThan5 = numbers.where((num){
  return num> 5; //true
});
  print('>5 Iterable: $numbersGreaterThan5');
  print('>5 Set: ${numbersGreaterThan5.toSet()}');
}