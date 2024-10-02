void main() async {
  // Future - 미래
  // Future<String> name = Future.value("코드팩토리 신하승");

  // delay
  // 지연 후 실행
  // 1번 파라미터 - 지연할 시간
  // 2번 파라미터 - 지연시간 후 실행할 함수
  // js setTimeout의 dart 버전
  // Future.delayed(Duration(seconds: 2), (){
  //   print("delay 끝!!!");
  // });

  await mulNumbers(num1: 10, num2: 15);
  await addNumbers(num1: 15, num2: 20);
  await subNumbers(num1: 10, num2: 2);
}

Future<void> mulNumbers({required int num1, required int num2}) async {
  print("계산시작 : ${num1} x ${num2}");

  await Future.delayed(
    Duration(seconds: 5), 
  () => print("계산완료 : ${num1} x ${num2} = ${num1 * num2}")
  );

  print("곱셈 완료");
}

Future<void> addNumbers({required int num1, required int num2}) async {
  print("계산시작 : ${num1} + ${num2}");

  await Future.delayed(
    Duration(seconds: 5), 
  () => print("계산완료 : ${num1} + ${num2} = ${num1 + num2}")
  );

  print("덧셈 완료");
}


Future<void> subNumbers({required int num1, required int num2}) async {
  print("계산시작 : ${num1} - ${num2}");

  await Future.delayed(
    Duration(seconds: 5), 
  () => print("계산완료 : ${num1} - ${num2} = ${num1 - num2}")
  );

  print("뺄셈 완료");
}