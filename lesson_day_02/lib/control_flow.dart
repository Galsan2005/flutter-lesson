void main(){
  bool doesOneEqualTwo = (1 == 2);
  print(doesOneEqualTwo); //false

  bool doesOneNotEqualTwo = (1 != 2);
  print(doesOneNotEqualTwo); //true

  bool isOneGreaterThanTwo = (1 > 2);
  print(isOneGreaterThanTwo); //false

  bool isOneLessThanTwo = (1 < 2);
  print(isOneLessThanTwo); //true

  const isSunny = false;
  const isFinished = false;
  const willGoCycling = isSunny && isFinished;
  print(willGoCycling); //false

  print('======AND OPERATOR=======');
  print(true && true);
  print(true && false);
  print(false && false);
  print(false && true);
  print('======AND OPERATOR=======');

  print('======OR OPERATOR=======');
  print(true || true);
  print(true || false);
  print(false || false);
  print(false || true);
  print('======OR OPERATOR=======');

  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawKangaroo = willTravelToAustralia || canFindPhoto;
  print(canDrawKangaroo); //true

  if(2 > 1){
    print('Yes, 2 is greater than 1.');
  }

  int a = 6;
  int b = 3;
  if(a > b){
    print('yes, $a is greater than $b');
  }else {
    print('no, $b is greater than $a');
  }

  const trafficLight = "green";
  String command = "";
  if(trafficLight == "red"){
    command = "Stop!";
  }else if (trafficLight == "yellow"){
    command = "Slow down";
  }else if (trafficLight == "green"){
    command ="Go";
  }else {
    command = "Invalid color!";
  }
  print(command);

  // ternary operator
  const score = 40;
  if( score >= 60){
    print("you passed");
  }else {
    print("Failed");
  }

  const message = (score >= 60) ? "you passed" : "Failed";
  print(message);

  //switch statements
  switch (trafficLight){
    case "red":
      command = "Stop!";
      break;
    case "yellow":
      command = "slow down";
      break;
    case "green":
      command = "Go";
      break;
    default:
      command = "invalid color";
  }
  print(command);

  const myAge = 19;
  const isTeenager = (myAge >= 13 && myAge <= 19) ? "You are teenager" : "You are not teenager";
  print(isTeenager);

}