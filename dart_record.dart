void main(){
  final result = nameAndAge({
    "name": "테스트",
    "age": 30,
  });

  print(result);
  print(result.$1);
  print(result.$2);

  print("=======================================================");
  print(getMembers());
  print(getMemberNew());
  final membersNew = getMemberNew();
  for(final member in membersNew){
    print("member info { name : ${member.name}, age : ${member.age}}");
  }
  print("=======================================================");
  distructureTemp();
  print("=======================================================");
}

(String, int) nameAndAge(Map<String, dynamic> json){
  return (json["name"] as String, json["age"] as int);
}

List<Map<String, dynamic>> getMembers(){
  late List<Map<String, dynamic>> members = [
    {
      "name":"태양",
      "group":"빅뱅",
    },
    {
      "name":"지드래곤",
      "group":"빅뱅",
    },
    {
      "name":"대성",
      "group":"빅뱅",
    },
  ];
  return members;
}

List<({String name, int age})> getMemberNew(){
  late List<Map<String, dynamic>> members = [
    {
      "name":"태양",
      "group":"빅뱅",
    },
    {
      "name":"지드래곤",
      "group":"빅뱅",
    },
    {
      "name":"대성",
      "group":"빅뱅",
    },
  ];
  return [(age: 36, name: "태양"), (name: "지드래곤", age: 37)];
}


void distructureTemp(){
  final temp = ["apple", "banana", "bean", "java", "python", "react"];

  final [resultA, resultB, ...others, resultN] = temp;
  print("results info >> resultA : ${resultA}, resultB : ${resultB}, resultN : ${resultN}");
  print("others : ${others}");
}