import 'class_idol.dart';

void main(){
  // Validation
  final minJi = ("민지", 20);
  final (name as String, age as int) = minJi;
  print("minji's info >> name: ${name}, age: ${age}");

  switcher(1);
  switcher("test");
  forLooper();

  print("===============================");
  final testUser = schoolclassMateTemp(name: "test", members: ["없음"]);
  print("testUser : ${testUser}");
}

void switcher(dynamic anything){
  switch(anything){
    case "test":
      print("test");
    
    default:
      print("no match");
  }
}

void forLooper(){
  final List<Map<String, dynamic>> people = [
    {
      "name": "신하승",
      "age": 30,
    },
    {
      "name": "권오욱",
      "age": 30,
    },
    {
      "name": "윤현성",
      "age": 30,
    },
    {
      "name": "윤승훈",
      "age": 30,
    },
    {
      "name": "김영범",
      "age": 30,
    },
  ];

  for(final {"name": name, "age": age} in people){
    print("name : ${name}, age : ${age}");
  }
}


class schoolclassMateTemp extends Idol {
  String name;
  List<String> members;

  schoolclassMateTemp({required this.name, required this.members}) : super(name, members);

  void temp(){
    print("temp");
  }

  @override
  String toString(){
    return "schoolclassMateTemp info >> name is ${name} and members is ${members}.";
  }
}

class HumanServiceImpl implements HumanService {
  @override
  String selectHumanInfo(){
    return "";
  }
}