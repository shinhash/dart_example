void main(){
  print("calc_add = " + calc_add(1, 2).toString());
  print("calc_sub = " + calc_sub(5, 4).toString());
  // lateFinalStr();

  dynamicMap();

  // basicDataTypes();
  // complexDataTypes();
  // strInterpolation();

  collectionIF(true);
  collectionFOR(7);

  collectionMapList();
  collectionSet();

  nameParameters(age:30, email: "shinhash123@gmail.com", name: "hash");
  nameParametersRequired(age:30, email: "shinhash@gmail.com", name: "shinhash");

  dateTime();
}


int calc_add(int val1, int val2){
  // positional parameter
  return val1 + val2;
}

// fat arrow syntax( => ) is return
int calc_sub(int val1, int val2) => val1 - val2;

void lateFinalStr(){
  late final String jsonData;
  jsonData = "test";
  print(jsonData);
}

void dynamicMap(){
  dynamic temp;
  temp = {
    'id': 'test',
    'pw': '1234',
  };
  Map usermap = {};
  if(temp is Map){
    temp.forEach((key, value){
      usermap.addEntries((<String, Object>{key : value}).entries);
    });
    usermap.addEntries((<String, Object>{"name":"알라"}).entries);
  }
  print("dynamicMap : " + usermap.toString() + " function!!!");
}

void basicDataTypes(){
  String str = "hash";
  bool isNo = true;
  
  double dNum = 3.14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196;
  num nNum = dNum;
  int iNum = nNum.toInt();
  print(dNum);
  print(nNum.compareTo(dNum-1));
  print(iNum);
}

void complexDataTypes(){
  var numbers = [1, 2, 3, 4, 5,];
  numbers.add(17);

  List<int> numberList = [1, 2, 3, 4, 5,];
  numberList.add(18);

  print(numbers);
  print(numberList);
}

void strInterpolation(){
  final String name = "hash";
  final int age = 30;
  // dart string interpolation is same to django f string
  final String greeting = "Hello, my name is $name and I'm ${age + 1} !";
  print(greeting);
}

void collectionIF(bool isWantAddNumFive){
  List<int> ifList = [
    1, 2, 3, 4, if(isWantAddNumFive) 5,
  ];
  print("collectionIF : " + ifList.toString());
}

void collectionFOR(int forCnt){
  List<int> oldForList = [10, 11, 12,];
  List<int> forList = [
    for(int numCnt=0; numCnt<forCnt; numCnt++) numCnt+1,
    for(int num in oldForList) num,
  ];
  print(oldForList.contains(12));
  print("collectionFOR : " + forList.toString());
}

void collectionMapList(){
  List<Map<String, Object>> players = [];
  Map<String, Object> player = {
    "name": "hash",
    "hp": 100,
    "mp": 81,
    "ap": 12.8,
    "adminAuth": false,
  };
  players.add(player);

  player = {
    "name": "dragt",
    "hp": 100,
    "mp": 1,
    "ap": 2.87,
    "adminAuth": false,
  };
  players.add(player);

  player = {
    "name": "develos",
    "hp": 68,
    "mp": 100,
    "ap": 42.5,
    "adminAuth": false,
  };
  players.add(player);

  print("collectionMapList : " + players.toString());
}

void collectionSet(){
  var numbers = {1, 2, 3, 4, 5,};
  numbers.add(6);
  numbers.add(1);
  numbers.add(5);

  print("collectionSet : " + numbers.toString());
}

void nameParameters({String name="annonimous", int age=27, String email="test.gmail.com"}){
  // {String temp="temp"} is null safty func
  // named parameter
  print("my name is $name and i'm $age years old, my email address is $email");
}

void nameParametersRequired({required String name, required int age, required String email}){
  // named parameter
  print("my name is $name and i'm $age years old, my email address is $email");
}

void dateTime(){
  final DateTime now = DateTime.now();
  print(now);
}

