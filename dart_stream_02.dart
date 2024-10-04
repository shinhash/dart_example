import "dart:async";

void main(){
  // calculate(2).listen((val) => print("2의 배수 : ${val}"));
  // calculate(5).listen((val) => print("5의 배수 : ${val}"));

  playAllStream().listen((val) => print("배수 : ${val}"));
}

Stream<int> playAllStream() async* {
  yield* calculate(2);
  yield* calculate(5);
}

Stream<int> calculate(int number) async* {
  for(int i=1; i<10; i++){
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}