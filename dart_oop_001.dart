import 'class_idol.dart';

void main(){
  Idol idol = Idol("빅뱅", ["지드래곤", "탑", "승리", "대성", "태양"]);
  idol.sayHello();
  idol.introduce();

  Map<String, Object> map = {};
  map["name"] = "BTS";
  map["members"] = ["정국", "뷔", "지민", "슈가", "RM", "진", "제이홉"];

  Idol BTS = Idol.namedParamConstructor(map);
  print("members is List : " + (map["members"] is List<String>).toString());
  print("members type : " + (map["members"].runtimeType).toString());
  BTS.sayHello();
  BTS.introduce();

  BoyGroup Cnblue = BoyGroup("CNBLUE", 4);
  Cnblue.sayName();
  Cnblue.sayMemberCount();


  GirlGroup BlackPink = GirlGroup(name: "BlackPink", members: ["지수", "제니", "로제", "리사"]);
  BlackPink.sayHello();
  BlackPink.introduce();


  print(BlackPink is Idol);
  print(BlackPink is GirlGroup);
  print(BlackPink is BoyGroup);


  TimesTwo tt1 = TimesTwo(2);
  print(tt1.calculate());

  TimesFour tt2 = TimesFour(2);
  print(tt2.calculate());


  MiniGroup mg = MiniGroup("hash", 1);
  mg.sayName();
}





class TimesTwo{
  final int number;
  TimesTwo(this.number);

  int calculate(){
    return number * 2;
  }
}

class TimesFour extends TimesTwo{
  TimesFour(int number) : super(number);

  @override
  int calculate(){
    return number * 4;
  }
}




/* 상속 */
class IdolSample{
  String name;
  int membersCount;

  IdolSample({
    required this.name,
    required this.membersCount,
  });

  void sayName(){
    print("저희는 ${this.name} 입니다.");
  }
  void sayMemberCount(){
    print("${this.name} 은 ${this.membersCount} 명 입니다.");
  }
}

class BoyGroup extends IdolSample{
  BoyGroup(String name, int membersCount) : super(name : name, membersCount : membersCount);
}

class GirlGroup extends Idol{
  GirlGroup({required String name, required List<String> members}) : super(name, members);
}


/* Interface, Abstract */
abstract class IdolInterface{
  String name;
  
  IdolInterface(this.name);

  void sayName();
}

class MiniGroup implements IdolInterface{
  String name;
  int membersCount;

  MiniGroup(this.name, this.membersCount);

  void sayName(){
    print("name : ${name}, member : ${membersCount}");
  }
}