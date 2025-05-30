import 'dart:math';
void main(){
  print('======exercise 1=======');
  int counter = 0;
  while(counter < 10){
    print("counter is $counter");
    counter++;
  }
  print("");

  print('======exercise 2=======');
  for(int i=1; i<=10; i++){
    print(i*i);
  }
  print("");

  print('======exercise 3=======');
  double ex3 = 0;
  while(ex3 <= 1 ){
    print(ex3);
    ex3 = ex3 + 0.1;
  }
  print("");

  print('======exercise 4=======');
  for(int i = 10; i >= 0; i--){
    print(i);
  }
  print("");

  print('======exercise 5=======');
  var sum = 0;
  for (var i = 0; i <= 5; i++ ) {
    sum += i;
    print(sum);
  }
  print("");

  print('======exercise 6=======');
  int sum6 = 0;
  for(int i = 2; i <= 20; i+=2){
    sum6 = sum6 + i ;
  }
  print("The sum of even numbers between 1 and 20 is: $sum6");
  print("");

  print('======exercise 7=======');
  const int num = 5;
  int ex7 = 0;
  for(int i=1; i <= 10; i++){
    ex7 = i * num;
    print("$i * $num = $ex7");
  }
  print("");

  print('======exercise 8=======');
  const int num2 = 10;
  int ex8 = 1;
  for(int i=1; i <= num2; i++){
    if(i%2==1) {
      print("$ex8: $i");
      ex8++;
    }
  }
  print("");

  print('======exercise 9=======');
  const int num3 = 10;
  int ex9 = 1;
  for(int i=1; i <= num3; i++){
    if(i%2==0) {
      print("$ex9: $i");
      ex9++;
    }
  }
  print("");

  print('======exercise 10=======');
  int ex10 = 1;
  while(ex10 < 10){
    print("$ex10: HELLO");
        ex10++;
  }
  print("");

  print('======exercise 11=======');
  const int num4 = 100;
  int ex11 = 1;
  for(int i=1; i <= num4; i++){
    if(i%3==0) {
      print("$ex11: $i");
      ex11++;
    }
  }
  print("");

  print('======exercise 12=======');
  const int num5 = 20;
  int ex12 = 1;
  double result = 0;
  for(int i=1; i <= num5; i++){
    result = sqrt(i);
    print("$ex12: $result");
    ex12++;
  }
  print("");

  print('======exercise 13=======');
  for(int i = 20; i >= 0; i--){
    print(i);
  }
  print("");

  print('======exercise 14=======');
  for(int i=1; i<=20; i++){
    print(i*i);
  }
  print("");
  print('======exercise 15=======');
  int sum15 = 0;
  for(int i=1; i<=5; i++){
    sum15 = sum15 + (i*i);
  }
  print("The quadrat sum of numbers from 1 to 5 is $sum15");
  print("");

  print('======exercise 1=======');

  Exercise01 exercise = Exercise01();
  print(exercise.addNumbers(2, 4));
  print(exercise.addNumbers(3, 4));
  print(exercise.addNumbers(25, 4));
  print(exercise.addNumbers(2, 6));
  print(exercise.addNumbers(2, 34));

  print("");

  print('======exercise 2=======');

  Exercise02 exercise02 = Exercise02();
  print(exercise02.calculateSqrt(1,2));
  print(exercise02.calculateSqrt(3,4));
  print(exercise02.calculateSqrt(5,10));
  print(exercise02.calculateSqrt(8,6));
  print(exercise02.calculateSqrt(2,2));

  print("");

  print('======exercise 3=======');

  Exercise03 exercise03 = Exercise03();
  print(exercise03.calculateCircleArea(3));
  print(exercise03.calculateCircleArea(4));
  print(exercise03.calculateCircleArea(5));
  print(exercise03.calculateCircleArea(6));
  print(exercise03.calculateCircleArea(2));

  print("");
  print('======exercise 4=======');
  Exercise04 exercise04 = Exercise04();
  print(exercise04.getLength('Hello'));
  print(exercise04.getLength('Galsan'));
  print(exercise04.getLength('qwerqwer'));
  print(exercise04.getLength('Helqwerlo'));
  print(exercise04.getLength('Hellqwerqwero'));

  print("");
  print('=====exercise 5=======');

  Exercise05 exercise05 = Exercise05();
  print(exercise05.fahrenheitToCelsius(32));
  print(exercise05.fahrenheitToCelsius(89.6));
  print(exercise05.fahrenheitToCelsius(45));
  print(exercise05.fahrenheitToCelsius(76));
  print(exercise05.fahrenheitToCelsius(86));

  print("");
  print('======exercise 6=======');

  Exercise06 exercise06 = Exercise06();
  print(exercise06.celsiusToFahrenheit(0));
  print(exercise06.celsiusToFahrenheit(32));
  print(exercise06.celsiusToFahrenheit(7.2222));
  print(exercise06.celsiusToFahrenheit(24.444));
  print(exercise06.celsiusToFahrenheit(30));

  print("");
  print('======exercise 7=======');

  Exercise07 exercise07 = Exercise07();
  print(exercise07.isPalindrom("racecar"));
  print(exercise07.isPalindrom("hello"));
  print(exercise07.isPalindrom("diid"));
  print(exercise07.isPalindrom("ho hu hu"));
  print(exercise07.isPalindrom("raaaar"));

  print("");
  print('======exercise 8=======');

  Exercise08 exercise08 = Exercise08();
  print(exercise08.convertTemperature(32, "C"));

  print("");
  print('======exercise 9=======');

  Exercise09 exercise09 = Exercise09();
  print(exercise09.convertCurrency(3500, "MNT", "USD"));
  print(exercise09.convertCurrency(340, "CNY", "MNT"));
  print(exercise09.convertCurrency(5, "USD", "MNT"));
  print(exercise09.convertCurrency(1450, "CNY", "MNT"));
  print(exercise09.convertCurrency(2000000, "MNT", "CNY"));

  print("");
  print('======exercise 10=======');
  Exercise10 exercise10 = Exercise10();
  print(exercise10.fibonnacci(5));
  print(exercise10.fibonnacci(10));
  print(exercise10.fibonnacci(3));
  print(exercise10.fibonnacci(4));
  print(exercise10.fibonnacci(6));

}
class Exercise01 {
  int addNumbers(int a, int b){
    return a * b;
  }
}

class Exercise02 {
  num calculateSqrt(double a, double b){
    num sum =(a * a) + (b * b);
    return sqrt(sum);
  }
}

class Exercise03 {
  double calculateCircleArea(double a){
    return (a * a) * 3.14;
  }
}

class Exercise04 {
  int getLength(String a){
    return a.length;
  }
}

class Exercise05 {
  double fahrenheitToCelsius(double a){
    return (a - 32) / 1.8;
  }
}

class Exercise06 {
  double celsiusToFahrenheit(double a){
    return (a * 1.8) + 32;
  }
}

class Exercise07 {
  bool isPalindrom(String a){
    String reversed = a.split('').reversed.join('');
    return a == reversed;
  }
}

class Exercise08 {
  double convertTemperature(double a, String b){
    if(b == "C"){
      return (a * 1.8) + 32;
    }else {
      return (a - 32) / 1.8;
    }
  }
}

class Exercise09 {
  double convertCurrency(double a, String b ,String c){
    if(b == "MNT" && c == "USD"){
      return a / 3500;
    }else if(b == "MNT" && c == "CNY"){
      return a / 500;
    }else if(b == "USD" && c == "MNT"){
      return a * 3500;
    }else {
      return a * 500;
    }
  }
}

class Exercise10 {
   int fibonnacci(int a){
    int b = 0;
    int c = 1;
    int d = 0;
    for(int i = 1; i <= a; i++){
      d = b + c;
      b = c;
      c = d;
    }
    return b;
  }
}
