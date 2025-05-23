void main(){
  print('======exercise 1,2=======');
  int myAge = 19;
  int aAge = 20;
  int bAge = 21;
  double averageAge = (myAge + aAge + bAge)/3;
  print('Average is $averageAge');
  print('');
  print('======exercise 3=======');
  int testNumber = 13;
  int evenOdd = testNumber % 2;
  print(evenOdd);
  print('');
  print('======exercise 4=======');
  int dogs = 1;
  dogs += 1;
  print('You have $dogs dogs.');
  print('');
  print('======exercise 5=======');
  int age = 16;
  print(age);
  int anotherAge = 30;
  print(anotherAge);
  print('');
  print('======exercise 6=======');
  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);
  print(answer1);
  print(answer2);
  print(answer3);
  print('');
  print('======exercise 7=======');
  double rating1 = 1.5;
  double rating2 = 2.5;
  double rating3 = 3.5;
  num averageRating = (rating1 + rating2 + rating3)/3;
  print('Average is $averageRating');
  print('');

  print('======exercise 1=======');
  const a = 19;
  const isTeenager = (a >= 13 && a <= 19) ? "You are teenager" : "You are not teenager";
  print(isTeenager);
  print('');

  print('======exercise 2=======');
  const maryAge = 30;
  const bothTeenagers = (a >= 13 && a <= 19) && (maryAge >= 13 && maryAge <= 19) ? "You are teenager" : "You are not teenager";
  print(bothTeenagers);
  print('');

  print('======exercise 3=======');
  String reader = "Galsan";
  String elon = "Elon Musk";
  bool elonIsReader = (reader == elon);
  print(elonIsReader);
  print('');

  print('======exercise 4=======');
  String firstName = 'Bob';
  String lastName = '';
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print(fullName);
  print('');

  print('======exercise 5=======');
  // true && true
  // false || false
  //   (true && 1 != 2) || (4 > 3 && 100 < 1)
  //   ((10 / 2) > 3) && ((10 % 2) == 0)
  print('');

  print('======exercise 6=======');
  const num1 = 2;
  const num2 = 3;
  if(num1 > num2){
    print("num1 is greater than num2");
  }else if(num1 == num2){
    print("num1 is equal to num2");
  }else{
    print("num1 is less than num2");
  }
  print('');

  print('======exercise 7=======');
  const num3 = 2;
  const num4 = 3;
  if((num1 * num2) == 64){
    print("The product is 64");
  }else {
    print("The product is not 64");
  }
  print('');

  print('======exercise 8=======');
  const num5 = 8;
  const num6 = 4;
  if((num5 % num6) == 0 ){
    print("The quotient is a whole number");
  }else {
    print("The quotient is not a whole number");
  }
  print('');

  print('======exercise 9=======');
  int num7 = 4;
  if((num7 % 2) == 0){
    print("The number is even");
  }else {
    print("The number is odd");
  }
  print('');

  print('======exercise 10=======');
  int num8 = 2;
  int num9 = 3;
  int num10 = 4;
  if (num8 >= num9 && num8 >= num10){
    print("The largest number is num8");
  }else if(num8 <= num9 && num9 >= num10){
    print("The largest number is num9");
  }else{
    print("The largest number is num10");
  }

  print('');
  print('======exercise 11=======');
  const double temperature = 32;
  double celsius = temperature;
  double fahrenheit = temperature;
  String tempType = "F";
  if (tempType == "F"){
    double fahrenheit = (celsius * 9 / 5) + 32;
    print(fahrenheit);
  }else if(tempType == "C"){
    double celsius = (fahrenheit - 32) / 1.8;
    print(celsius);
  }
  print('');

  print('======exercise 12=======');
  const num11 = 25;
  if(num11 >= 0 && num11 <= 12){
    print('Child');
  }else if(num11 >= 13 && num11 <= 19){
    print('Teen');
  }else if(num11 >= 20 && num11 <= 64){
    print('Adult');
  }else if(num11 >= 65 && num11 <= 100){
    print('Senior');
  }else if(num11 > 100) {
    print('Congratulations');
  }
  print('');

  print('======exercise 13=======');
  const num12 = 25;
  if(num12 > 0){
    print("The number is a positive number");
  }else if(num12 < 0){
    print("The number is a negative number");
  }else {
    print("The number is zero");
  }
  print('');

  print('======exercise 14=======');
  const angle1 = 60;
  const angle2 = 60;
  const angle3 = 60;
  num angle = angle1 + angle2 + angle3;
  if(angle == 180){
    if(angle1 == angle2 && angle2 == angle3){
      print("The triange is an equilateral triangle");
    }else if(angle1 == angle2 || angle2 == angle3 || angle1 == angle3){
      print("The triangle is an isosceles triangle");
    }else{
      print("The triangle is a scalene triangle");
    }
  }else{
    print("These angles cannot form a triangle");
  }
  print('');

  print('======exercise 15=======');
  const num15 = 85;
  if(num15 >= 90){
    print('You got an A');
  }else if(num15 >= 80 && num15 < 90){
    print('You got an B');
  }else if(num15 >= 70 && num15 < 80){
    print('You got an C');
  }else if(num15 >= 60 && num15 < 70){
    print('You got an D');
  }else if(num15 < 60) {
    print('You got an F');
  }
  print("");

  print("=====================");
  print("=====================");
  print('======exercise 1=======');
  int totalPurchase = 85000;
  bool isMember = true;
  if(isMember == true && totalPurchase > 100000){
    num totalPrice = (totalPurchase * 15) / 100;
    totalPrice = totalPurchase - totalPrice;
    print(totalPrice);
  }else if(isMember == true && totalPurchase < 100000){
    num totalPrice = (totalPurchase * 10) / 100;
    totalPrice = totalPurchase - totalPrice;
    print(totalPrice);
  }else if (isMember != true && totalPurchase > 100000){
    num totalPrice = (totalPurchase * 10) / 100;
    totalPrice = totalPurchase - totalPrice;
    print(totalPrice);
  }else if (isMember != true && totalPurchase < 100000) {
    num totalPrice = (totalPurchase * 5) / 100;
    totalPrice = totalPurchase - totalPrice;
    print(totalPrice);
  }
  print("");

  print('======exercise 2=======');
  int q = 12;
  int w = 45;
  int e = 30;
  if(q > w && q > e){
    if(w > e){
      print(w);
    }else{
      print(e);
    }
  }else if (q < w && w > e){
    if(q > e){
      print(q);
    }else{
      print(e);
    }
  }else if (q < e && w < e) {
    if (q > w) {
      print(q);
    } else {
      print(w);
    }
  }
  print("");
  print('======exercise 3=======');
  print("");


  print('======exercise 4=======');
  int hoursWorked = 45;
  bool isLate = true;
  if (hoursWorked >= 40 && isLate == false){
    print('+20%');
  }else if(hoursWorked >= 40 && isLate == true){
    print('+10%');
  }else if(hoursWorked < 40 && isLate == false){
    print("+0%");
  }else {
    print("-10%");
  }
  print("");

  print('======exercise 5=======');
  int day = 7; // 1–Даваа ... 7–Ням
  int hour = 9;
  if(day == 7 || day == 6){
    if(hour >= 10){
      print("Боссон байх магадлалтай");
    }else{
      print("Одоо унтаж байж магадгүй");
    }
  }else{
    print("Сэрүүн");
  }
  print("");

  print('======exercise 6=======');
  bool hasID = true;
  bool hasPhone = false;
  int r = 19;
  if(r >= 18 && hasID == true && hasPhone == true){
    print("OK");
  }else{
    print("Бүртгүүлэх боломжгүй");
  }
  print("");

  print('======exercise 7=======');
  print("");

  print('======exercise 8=======');
  int t = 10;
  bool withAdult = false;
  if(t >= 13){
    print("You can watch");
  }else if(withAdult == true){
    print("You can watch this");
  }else{
    print("NO!!!");
  }
  print("");

  print('======exercise 9=======');
  int batteryLevel = 45;
  if(batteryLevel < 20){
    print("Даруй цэнэглэ");
  }else if(batteryLevel < 50 && batteryLevel > 19){
    print("Хүчдэл бага");
  }else if(batteryLevel > 50 && batteryLevel < 80){
    print("Хангалттай");
  }else if(batteryLevel > 79 && batteryLevel <= 100){
    print("Бараг дүүрсэн");
  }
  print("");
  print('======exercise 10=======');
  double speedMbps = 9.5;
  if(speedMbps < 5){
    print("Удаан");
  }else if(speedMbps < 10 && speedMbps >= 5){
    print("Дунд");
  }else if(speedMbps > 10){
    print("Хурдан");
  }
  print("");

  print('======exercise 11=======');
  int temp = 32;
  bool windy = true;
  if(temp > 30 && windy == false){
    print("Маш халуун");
  }else if(temp > 30 && windy == true){
    print("Халуун ч салхитай");
  }else{
    print("Хэвийн");
  }
  print("");
  print('======exercise 12=======');
  double jin = 72.0; // кг
  double undur = 1.68; // метр
  num BMI = jin / (undur * undur);
  if(BMI < 18.5){
    print("Жин багатай");
  }else if(BMI < 24.9 && BMI >= 18.5){
    print("Хэвийн");
  }else if(BMI >= 25 && BMI < 30){
    print("Илүүдэл жинтэй");
  }else if(BMI >= 30){
    print("Таргалалттай");
  }

  print("");



}