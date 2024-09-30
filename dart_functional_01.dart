void main(){
  List<String> fruits = ["apple", "banana", "peach", "orange"];

  print(fruits);
  print(fruits.asMap());
  print(fruits.toSet());

  Map map = fruits.asMap();
  print(map);
  print(map[3]);
  print(map.keys.toList());
  print(map.values.toList());

  Set set = Set.from(fruits);
  print(set);
  print(set.toList());

  print("------- list.map -------");
  final temp = fruits.map((x) => "${x} is good");
  print(temp);

  print("------- split.map -------");
  String splitStr = "123456789";
  final strSplitList = splitStr.split("").map((x) => x);
  print(strSplitList);

  print("------- harry potter -------");
  Map<String, String> harryPotter = {};
  harryPotter.addEntries(<String, String>{"Harry Potter": "해리포터"}.entries);
  harryPotter.addEntries(<String, String>{"Ron Weasley": "론 위즐리"}.entries);
  harryPotter.addEntries(<String, String>{"Hermione Granger": "헤르미온느 그레인저"}.entries);

  final result = harryPotter.map(
    (key, value) => MapEntry(
                                "English name is ${key}"
                              , "Korean name is ${value}"
                            )
  );
  print(result.keys);
  print(result.values);

  print("------- key to list -------");
  final keysInfo = harryPotter.keys.map((x) => "Harry Potter Charactor : ${x}");
  print(keysInfo);
  print(keysInfo.toList());

  print("------- set to list -------");
  Set blackPink = {"지수", "제니", "로제", "리사"};
  final newSet = blackPink.map((x) => "블랙핑크 ${x}");
  print(newSet);
  print(newSet.toList());
}