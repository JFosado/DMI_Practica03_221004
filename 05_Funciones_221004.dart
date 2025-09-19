void main() {
  void localFunction() {
    print(
      "Esta es una funcion local y solo puede ser invocada dentro del main()",
    );
  }

  localFunction();
  print("--------------------------------");
  print(globalFunction());
  print("++++++++++++++++++++++++++++++++");
  print(greetEveryone());
  print("\n------------------------------");
  print("Test 1: ${addTwoNumbers(25,10)}");
  print("Test 3: ${addTwoNumbersOptionals(25)}");
  print("Test 4: ${greetPerson(name:"Jose")}");
  print("Test 4: ${greetPerson(name:"Pedro", message:"Buenas tardes, ")}");
//   print("Test 2: ${addTwoNumbers(25,"10")}");
//   print("Test 2: ${addTwoNumbers(25,null)}");
}

String globalFunction() {
  return "Esta es una funcion global y puede ser invocada en cualquier parte del codigo";
}

String greetEveryone() => globalFunction() + ": Saludos bandera";

int addTwoNumbers(int a, int b)=> a+b;

int addTwoNumbersOptionals(int a, [int b=0]){
  return a+b;
}
String greetPerson({required String name, String message="Hola "}){
  return "${message}${name}";
}