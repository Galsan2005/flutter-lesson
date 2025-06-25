void main() {
  List<int> toonuud = [5, 10, 15, 20, 25];
  int niilber = 0;

  for (final too in toonuud) {
    niilber += too;
  }

  print(niilber);

  List<int> toonuud2 = [42, 13, 67, 8, 95, 29, 5, 56];
  int too = 0;
  int too1 = toonuud2[0];
  for (int i = 0; i < toonuud2.length; i++) {
    if (toonuud2[i] > too) {
      too = toonuud2[i];
    } else if (toonuud2[i] < too1) {
      too1 = toonuud2[i];
    }
  }

  print("IH: $too");
  print("BAGA $too1");

  List<int> toonuud3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int ex3 = 0;
  for (int i = 0; i < toonuud3.length; i++) {
    if (toonuud3[i] % 2 == 0) {
      ex3 += 1;
    }
  }
  print(ex3);

  List<String> nerUgs = ['Цэцэг', 'Анар', 'Болд', 'Жаргал', 'Дулам'];
  nerUgs.sort();
  print(nerUgs);

  List<int> davhardsanToonuud = [1, 2, 2, 3, 4, 4, 5, 5, 5];
  Set<int> ex5 = davhardsanToonuud.toSet();
  print(ex5);

  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {4, 5, 6, 7, 8};

  final intersectionSet = set1.intersection(set2);
  print(intersectionSet);

  Set<String> mongolAimguud = {'Архангай', 'Баян-Өлгий', 'Булган'};
  Set<String> busadAimguud = {'Дорнод', 'Дундговь', 'Завхан'};
  print(mongolAimguud.union(busadAimguud));

  Set<int> tom = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  Set<int> tegsh = {2, 4, 6, 8, 10};

  print(set2.difference(set1));

  Map<String, int> huniiNas = {'Болд': 25, 'Сараа': 30, 'Баяр': 35};

  huniiNas["Дулам"] = 28;
  print(huniiNas);

  huniiNas.remove("Баяр");
  print(huniiNas);

  Map<String, int> baraaUne = {
    'Гурил': 2500,
    'Сүү': 3800,
    'Талх': 2200,
    'Чихэр': 5500,
    'Будаа': 4300
  };

  baraaUne.forEach((key, value) {
    if (value > 3000) {
      print("$key, $value");
    }
  });
  print("");

  Map<String, double> valut = {
    'USD': 3450.0,
    'EUR': 3750.0,
    'JPY': 23.5,
    'CNY': 476.8
  };

  valut.updateAll((key, value) => value * 1.02);
  print(valut);

  Map<String, Map<String, dynamic>> oyutnuud = {
    'O001': {
      'ner': 'Болд',
      'nas': 20,
      'mergejil': 'Компьютерийн ухаан',
      'dun': 3.6
    },
    'O002': {'ner': 'Сараа', 'nas': 19, 'mergejil': 'Математик', 'dun': 3.8},
    'O003': {'ner': 'Төгөлдөр', 'nas': 21, 'mergejil': 'Физик', 'dun': 3.2}
  };

  oyutnuud.forEach((key, value) {
    print(
      "Name: ${value["ner"]}, Age: ${value["nas"]}, Occupation: ${value["mergejil"]}, Score: ${value["dun"]}"
    );
  });
}
