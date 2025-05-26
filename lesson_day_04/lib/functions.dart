void main(){
  // String name = "Galsan";
  void sayHello(name){
    print("Hello, $name");
  }
  sayHello("Galsan");

  void addTwoNumbers(int a, int b){
    print(a + b);
  }
  addTwoNumbers(2, 7);

  int addNumbers(int a, int b){
    return a + b;
  }
  print(addNumbers(3,5));

  String compliment(int a){
    String message = "$a a very nice number.";
    return message;
  }
  print(compliment(9));

  void findMax(int a, int b){
    if(a > b){
      print(a);
    }else{
      print(b);
    }
  }
  findMax(3, 5);

  print("=======EX1=======");
  num squire(int a){
    a = a * a;
    num b = a * 3.14;
    return b;
  }
  print("Talbai: ${squire(2)}");

  print("=======EX2=======");
  void isPrimeNumber(int c){
    int e = 0;
    for(int i = 2; i <= c; i++){
      if(c % i == 0){
        e++;
      }
    }
    if(e == 1){
      print("$c: Your number is prime number");
    }
  }
  isPrimeNumber(5);
}