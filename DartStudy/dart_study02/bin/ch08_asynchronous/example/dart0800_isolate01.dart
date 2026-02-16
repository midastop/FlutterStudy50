// 동기 vs 비동기 - 이 예제는 교안에서 제외ch0800_isolate01.dart
/* 프로그램은 일반적으로 위에서 아래로 순차적으로 처리되는데 이렇게 순차적으로 처리하는 방식을
 * 동기(synchronous) 방식이라고 한다. 동기 방식은 프로그램이 실행되면 앞의 작업이 처리되고
 * 그 다음 작업으로 넘어간다. 이런 경우 시간이 많이 걸리는 작업이 앞에 있다면 다음에 실행할
 * 작업은 앞의 작업이 완료될 때 까지 무한정 기다리게 된다. 이러한 문제를 해결하기 위해서 비동기
 * (asynchronous) 방식을 사용한다. 비동기 방식은 앞의 작업이 완료될 때 까지 기다리지 않고
 * 다음 작업이 바로 실행되는 방식으로 프로그램 코드가 순차적으로 실행되지 않는 구조이다.
 **/
/* 다트 프로그램은 isolate 이라는 공간이 실행된다. isolate는 다트의 모든 코드가 실행되는
 * 공간으로 싱글 스레드 구조가지고 있고 이벤트 루프를 통해서 작업을 처리한다. 다트 프로그램이
 * 시작되면 기본 isolate인 main isolate가 런타임에 생성된다. 만약 main isolate에서
 * 무거운 작업을 처리하며 반응성이 떨어진다면 isolate을 추가하여 작업을 처리할 수 있다. 이 때
 * main isolate과 추가된 isolate 2개가 동작하므로 2개의 스레드가 동작하는 것이다. 다트의
 * isolate은 자바에서의 스레드와는 다르게 isolate 자체에 메모리를 가지는 구조이다.
 **/
import "dart:isolate";
void main() {
  // isolate는 spawn() 함수를 이용해 만들 수 있다.
  Isolate.spawn(isolateTest, 1);
  Isolate.spawn(isolateTest, 2);
  Isolate.spawn(isolateTest, 3);
}

isolateTest(var n) {
  print("isolate no : $n");
}