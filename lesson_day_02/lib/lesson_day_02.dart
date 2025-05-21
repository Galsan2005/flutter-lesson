void main() {
  String name = "Galsan";
  print(name);
  int date = 21;
  print(date);
  double butarhaiToo = 2.5;
  print(butarhaiToo);
  const myConstant = 10;
  print(myConstant);
  final hours = DateTime.now().hour;
  print(hours);

  date++;
  print(date);

  date = date + 4;
  date += 4;
  print(date);

  // lesson day 2
  int myInteger = 10;
  print(myInteger is int);
  print(myInteger is String);

  // boolen
  bool isMarried = false;
  print(isMarried);

  bool isLoggedIn = true;
  print(isLoggedIn);

  print(myInteger.runtimeType);

  var integer = 100;
  print(integer);
  var decimal = 12.5;
  integer = 30;
  integer = decimal.toInt();
  print(integer);

  int a = 10;
  double b = a.toDouble();
  print(b);

  // estimate salary

  const double hourlyRate = 19.5;
  const int hoursWorked = 9;
  const totalCost = hourlyRate * hoursWorked;
  print(totalCost);
  print(totalCost.runtimeType);

  int myNumber = 6;
  print(myNumber.isEven);

  // exercise 1

  int dogs = 1;
  dogs++;
  print('You have $dogs dogs');

  //exeicise 2

  const double rating1 = 1.5;
  const double rating2 = 2.5;
  const double rating3 = 3.5;

  num averageRating = (rating1 + rating2 + rating3)/3;
  print('Average is $averageRating');
}

