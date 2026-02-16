// async와 await 02 - 반환 값이 있는 함수
// https://dart.dev/libraries/async/async-await
void order() {
  print("음식을 주문 받음");
}

/* 비동기 처리를 위한 함수의 반환 값은 Future<T>와 같이 제네릭을 사용한다. 아래는 반환
 * 값이 문자열이므로 <String>을 사용했다. 그리고 async 키워드를 함수의 매개변수 정의와
 * 함수 본문 사이에 지정하고 함수의 본문 안에서 실행 순서를 맞추기 위해서 대기 시킬 비동기
 * 함수의 호출 구문 앞에 await 키워드를 지정하면 된다.
 **/
Future<String> cooking() async {
  String result = "";
  await Future.delayed(Duration(seconds: 3), () {
    result = "음식을 조리 중...";
  });
  return result;
}

void complete() {
  print("조리 완료");
}

void main() async {
  order();
  String result = await cooking();
  print(result);
  complete();

  /* Future 클래스의 인스턴스 future가 작업을 완료하면 then() 함수가 호출된다.
   * 이때 future의 상태는 완료(completed) 상태가 된다. then() 함수의 첫 번째
   * 매개변수는 결과 값을 매개변수로 받는 익명 함수이며 두 번째 매개변수 onError는
   * 에러를 처리하기 위한 함수 이다.
   * https://dart.dev/libraries/async/futures-error-handling
   **/
  Future<String> future = cooking();
  future.then(
    (result) {
      order();
      print(result);
      complete();
    },
    onError: (e) {
      print(e);
    },
  );
}
/*
  //실행결과
  음식을 주문 받음
  음식을 조리 중...
  조리 완료
  음식을 주문 받음
  음식을 조리 중...
  조리 완료
 */