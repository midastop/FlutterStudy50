// 스트림(Stream) - 스트림 생성
/* Future는 반환 값을 딱 한 번 받을 수 있는 비동기 프로그래밍에서 사용한다. 연속적으로
 * 값을 받아서 처리해야 할 때는 스트림(Stream)을 사용한다. Stream은 데이터가 흐르는
 * 통로라고 생각하면 조금 더 이해하기 쉬울 것 같다. Stream을 통해서 연속된 데이터가 흘러
 * 들어오면 listen() 함수를 통해서 비동기적으로 처리할 수 있다. Future가 then() 함수를
 * 사용하는 것과 비슷한 개념이다. 하지만 Future는 하나의 데이터를 받아서 처리하는 경우로
 * 생각하면 된다. 예를 들면 인터넷에서 이미지 한 장을 다운로드 받아서 표시할 때 Future를
 * 사용한다면 Stream은 연속적인 이미지(동영상)을 받아서 표시할 때 적합하다고 할 수 있다.
 * https://dart.dev/libraries/async/using-streams
 **/
void main() async {
  // Stream 클래스는 스트림을 생성하는 다양한 비동기 함수를 제공한다.
  // value() 함수는 데이터 하나에 대한 이벤트를 발생시키는 스트림을 생성한다.
  Stream.value(100).listen((dynamic x) => print('getData : $x'));

  /* periodic() 함수는 지정한 주기로 반복적으로 이벤트를 발생시키는 스트림을 생성한다.
   * 첫 번째 인수로 시간 주기를 지정하는 Duration 객체를 지정해 1초 주기를 설정했다.
   * 두 번째 인수로 이벤트에서 발생한 값을 계산하는 함수를 지정하는데 여기서는 디폴트인
   * 카운트 함수를 지정했다. 이 함수는 0부터 시작하여 시간 주기인 1초에 1씩 증가된다.
   * take() 함수는 몇 번 반복할지 설정하는 역할을 한다.
   **/
  var s1 = Stream.periodic(Duration(seconds: 1), (x) => x).take(5);

  /* Stream을 수신하면 구독자(listener)를 통해서 데이터를 처리한다. listen()
   * 함수는 한 번만 동작하는 것이 아니라 전달되는 데이터 만큼 연속적으로 동작한다.
   **/
  s1.listen(print);
  // 오류발생 - 하나의 Stream에 대해서 구독자는 1개만 등록할 수 있다.
  //stream.listen((data) { print(data); });

  // fromIterable() 함수를 사용하면 List와 같은 데이터를 다룰 수 있다.
  Stream.fromIterable([1, 3, 5, 7, 9]).listen((x) => print("fromIterabl : $x"));

  // fromFuture() 함수를 사용하면 Future 데이터를 다룰 수 있다.
  Stream.fromFuture(getState("배송중")).listen((x) => print(x));

  // 스트림(Stream)은 데이터가 언제 끝날지 모르는 흐름이기 때문에, listen() 대신에
  // await for() 문법을 사용하면 해당 스트림이 종료될 때까지 다음 코드로 넘어가지 않는다.
  // listen: 비동기 병렬 방식, await for: 비동기 직렬 방식
  await for (var x in Stream.value(100)) {
    print("getData: $x");
  }
  var s2 = Stream.periodic(Duration(seconds: 1), (x) => x).take(5);
  await for (var x in s2) {
    print(x);
  }
  await for (var x in Stream.fromIterable([1, 3, 5, 7, 9])) {
    print("fromIterable: $x");
  }
  await for (var x in Stream.fromFuture(getState("배송중"))) {
    print(x);
  }
}

Future<String> getState(String state) async {
  return Future.delayed(Duration(seconds: 3), () => "$state 상태");
}
