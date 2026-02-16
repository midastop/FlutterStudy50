// 스트림(Stream) - StreamController
import 'dart:async';

void main() {
  /* StreamController는 Stream을 생성하고 관리하는 클래스로
   * Stream에 데이터를 추가하거나 Stream에서 데이터를 읽어올((구독할) 수 있다.
   * https://dart.dev/libraries/async/creating-streams#using-a-streamcontroller
   **/
  final controller = StreamController();
  final stream1 = controller.stream;
  final streamListener1 = stream1.listen((val) {
    print(val);
  });

  /* StreamController의 add() 함수와 sink 속성의 add() 함수를 사용해 Stream에 데이터를
   * 추가할 수 있다. 일반적으로 사용할 때는 간편한 add() 함수를 이용하고 고성능 처리,
   * 실시간 처리나 네트워크 응답 등에는 sink 속성의 add()를 사용하는 것이 좋다.
   **/
  controller.add(10);
  controller.add(20);
  controller.sink.add(30);

  // Stream 종료
  controller.close();
}
