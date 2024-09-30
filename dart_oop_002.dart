void main(){
  Lecture<String, String> lecture_first = Lecture("LC001", "MATH");
  lecture_first.lectureInfo();
}



/* generic */
class Lecture<X, Y> {
  X _code;
  Y _name;

  Lecture(X code, Y name) : this._code = code, this._name = name;

  void lectureInfo(){
    print("해당 강의의 코드는 ${getCode} 이며, 강의명은 ${getName} 입니다.");
  }

  X get getCode => this._code;
  set setCode(X code){
    this._code = code;
  }

  Y get getName => this._name;
  set setName(Y name){
    this._name = name;
  }
}