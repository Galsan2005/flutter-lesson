void main() {
  int a = 0;
  while (a <= 10) {
    print(a);
    a++;
  }

  int b = 1;
  int sum = 0;
  while (b <= 10) {
    sum += b;
    b++;
  }
  print(sum);

  int c = 11;
  int sum2 = 0;
  do {
    sum2 += c;
    c++;
  } while (c <= 10);
  print(sum2);

  for (int i = 0; i <= 5; i++) {
    print("Number: $i");
  }
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 1) {
      continue;
    }
    print(i);
  }
  int sum3 = 0;
  for (int i = 0; i <= 10; i++) {
    sum3 += 1;
    print(sum3);
    if (sum3 > 10) {
      print("Reached to 10");
      break;
    }
  }
  print("===============");
  int q = 0;
  for (int i = 1; i <= 5; i++) {
    q = i * 2;
    print("$i: ${i * 2}");
  }
}
