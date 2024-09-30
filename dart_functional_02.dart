void main(){
  List<Map<String, String>> people = [];
  Map<String, String> human = {};
  human["name"] = "김길현";
  human["age"] = "27";
  human["addr"] = "서울시";
  human["email"] = "gilhyun@gmail.com";
  people.add(human);

  human = {};
  human["name"] = "김도";
  human["age"] = "40";
  human["addr"] = "서울시";
  human["email"] = "kimdo@gmail.com";
  people.add(human);

  human = {};
  human["name"] = "자동";
  human["age"] = "40";
  human["addr"] = "서울시";
  human["email"] = "auto@gmail.com";
  people.add(human);

  print(people.toString());

  whereFunc(people: people);

  reduce();
  fold();
}

/* filters function */
void whereFunc({required List<Map<String, String>> people}){
  final streamer = people.where((x) => x["name"] == "김도");
  print("streamer : " + streamer.toString());

  List<String> temp = ["김도", "자동", "똘삼", "나성"];
  final tempFind = temp.where((x) => x == "자동");
  print("name is " + tempFind.toString());
}

void reduce(){
  List<int> numbers = [1,2,3,4,5,6,7,8,9,10];

  final result = numbers.reduce((prev, next){
    print("------- start -------");
    print("prev is ${prev}");
    print("next is ${next}");
    print("------- end -------");
    return prev + next;
  });

  print("total is ${result}");
}

void fold(){
  List<String> texts = ["hollo, ", "my name is ", "hash", "."];

  final result = texts.fold<String>("", (prev, next) => prev + next);
  print("text : " + result);
}