// 동기 vs 비동기 - 이 예제는 교안에서 제외ch0800_isolate01.dart
// 실행하면 계속해서 실행중인데 콘솔에 메시지는 출력되지 않음
import "dart:isolate";
void main() {
  int count = 0;

  ReceivePort mainReceivePort = ReceivePort();
  mainReceivePort.listen((fooSendPort) {
    if(fooSendPort is SendPort) {
      fooSendPort.send(count++);
    } else {
      print(fooSendPort);
    }

    for(var i = 0; i < 5; i++) {
      Isolate.spawn(foo, mainReceivePort.sendPort);
    }

  });
}

foo(SendPort mainSendPort) {
  print("start foo~");
  ReceivePort fooReceivePort = ReceivePort();
  mainSendPort.send(fooReceivePort.sendPort);

  fooReceivePort.listen((msg) {
    mainSendPort.send("received : $msg");
  });
}