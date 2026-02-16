// 스트림(Stream) - Stream을 반환하는 함수
/* Stream을 반환하는 함수의 반환 값은 Stream<T>와 같이 제네릭을 사용한다. 아래 함수에서
 * Stream에 전달되는 연속적인 값을 정수로 반환하므로 제네릭은 <int>를 사용했다. 그리고
 * 앞에서 Future를 반환하는 함수를 정의할 때 async 키워드를 사용했지만 Stream을 반환하는
 * 함수는 async* 키워드를 사용하면 된다. 그리고 Stream에 전달되는 값을 반환할 때는 yield
 * 키워드를 사용해 값을 반환하면 된다.
 **/
Stream<int> numbers() async* {
  for (int i = 0; i < 5; i++) {
    yield i + 1;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() {
  // 앞에서와 마찬가지로 Stream의 데이터는 listen() 함수에서 받아 처리한다.
  numbers().listen((val) {
    print(val);
  });
}
