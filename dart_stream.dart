import "dart:async";

void main(){
  final controller = StreamController();
  final stream = controller.stream;

  final streamListener1 = stream.listen((val){
    print("Listener 1 : ${val}");
  });

  controller.sink.add(1);
}