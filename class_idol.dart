/**
 * Idol class
 * name
 * member
 * sayHello
 * introduce
 * 
 * constructor
 */
class Idol{

  /* 변수 */
  late final String _name;
  late final List<String> _members;

  /* constructor (생성자) */
  // Idol(String name, List<String> members) : this._name = name, this._members = members;
  Idol(this._name, this._members);

  Idol.namedParamConstructor(Map<String, Object> map) 
  : this._name = map["members"].toString()
  , this._members = map["members"] as List<String>
  ;

  void sayHello(){
    print("안녕하세요 저희는 ${getName} 입니다.");
  }

  void introduce(){
    print("저희는 ${getMembers} 가 있습니다.");
  }


  /* getter setter */
  String get getName => this._name;
  set setName(String name){
    this._name = name;
  }

  List<String> get getMembers => this._members;
  set setMembers(List<String> members){
    this._members = members;
  }
}