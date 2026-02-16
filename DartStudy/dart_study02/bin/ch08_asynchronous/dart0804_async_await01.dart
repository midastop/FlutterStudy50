// async와 await 01
void order() {
  print("음식을 주문 받음");
}

/* 비동기 처리를 위한 함수를 정의할 때는 아래와 같이 Future<T>를 반환 값으로 지정하고
 * 함수의 괄호와 함수 본문 사이에 async 키워드를 지정해야 한다. Future<T>는 클래스
 * 이름의 의미와 같이 비동기 작업의 결과로 받을 미래의 값을 의미한다. cooking() 함수는
 * 반환 값이 없기 때문에 제네릭에 <void>를 지정했다. 
 * 여기서 Future 클래스의 인스턴스를 future라고 하자. future는 비동기 작업의 결과를
 * 나타내며 미완료(uncompleted)와 완료(complete) 2가지 상태를 가진다. 미완료는 future가
 * 값을 생성하기 전의 상태를 낸다. 완료는 비동기 작업이 성공적으로 완료되면 future는
 * 값으로 완료되고 그렇지 못하면 에러로 완료된다. 값으로 완료되면 Future<T>와 같이
 * future는 T 타입의 값으로 완료 된다. 예를 들어 반환 타입이 Future<String>라면
 * future는 문자열 값을 생성하고 만약 Future<void>라면 값을 생성하지 않는다.
 * https://dart.dev/language/async
 **/
Future<void> cooking() async {
  // 함수 안에서 실행 순서를 맞추기 위한 함수 호출 구문 앞에 await 키워드를
  // 지정하면 이 함수가 실행을 완료할 때까지 다음 코드로 넘어가지 않고 대기한다.
  await Future.delayed(Duration(seconds: 3), () {
    print("음식을 조리 중...");
  });
}

void complete() {
  print("조리 완료");
}

// main() 함수 안에서 비동기 처리를 코드를 작성하기 위해서 async 키워드를 지정하고 이 함수
// 안에서 비동기 처리가 필요한 함수 호출 구문 앞에 await 키워드를 사용해 비동기 처리를 적용했다.
// 함수 안에서 await을 사용하기 위해서는 함수 선언부에 반드시 async를 적용해야 한다. 그리고
// 그 함수 안에서 Future<T>를 반환하는 함수의 호출 구문 앞에 만 await 키워드를 적용할 수 있다.
void main() async {
  order();
  // await 키워드는 함수 선언부에 async 키워드가 적용되고
  // 다음과 같이 Future<T>를 반환하는 함수의 호출 구문 앞에 만 붙일 수 있다.
  await cooking();
  complete();
}
 /*
  //실행결과
  음식을 주문 받음
  음식을 조리 중...
  조리 완료
 */