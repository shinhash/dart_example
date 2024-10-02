void main(){
  Lecture<String, String> lecture_first = Lecture(code: "LC001", name: "MATH");
  lecture_first.lectureInfo();

  final List<Map<String, String>> people = [
    {
      "name": "윤현성",
      "email": "yhs@gmail.com",
    },
    {
      "name": "신하승",
      "email": "shinhash123@gmail.com",
    },
    {
      "name": "권오욱",
      "email": "kow@gmail.com",
    },
  ];

  print("people : " + people.toString());

  final parsePerson = people.map(
    (x) => Person(
      name: x["name"]!,
      email: x["email"]!,
    ),
  ).toList();
  print(parsePerson);
  print(parsePerson.runtimeType);
}



/* generic */
class Lecture<X, Y> {
  X code;
  Y name;

  // Lecture(X code, Y name) : this._code = code, this._name = name;

  Lecture({
    required this.code,
    required this.name,
  });

  void lectureInfo(){
    print("해당 강의의 코드는 ${getCode} 이며, 강의명은 ${getName} 입니다.");
  }

  X get getCode => this.code;
  set setCode(X code){
    this.code = code;
  }

  Y get getName => this.name;
  set setName(Y name){
    this.name = name;
  }
}

class Person {
  String name;
  String email;

  Person({
    required this.name,
    required this.email,
  });

  @override
  String toString(){
    return "Person(name:${name}, email:${email})";
  }
}