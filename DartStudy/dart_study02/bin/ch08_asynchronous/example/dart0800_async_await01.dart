// async와 await 01 - 반환 값이 없는 함수
/* Future 클래스는 "미래"라는 의미대로 미래에 받아올 값을 의미한다.
 * Future<T>와 같이 제넥릭을 사용해 미래에 받아 올 데이터 타입을 지정해 사용하면 된다.
 * 비동기 처리를 위한 함수의 반환 값은 Future<T>와 같이 제네릭을 사용한다. 아래는 반환
 * 값이 없기 때문에 <void>를 사용했다. 그리고 async 키워드를 함수의 매개변수 정의와
 * 함수 본문 사이에 지정하고 함수의 본문 안에서 대기 시킬 비동기 함수를 호출하는 앞에
 * await 키워드는 대기 시킬 비동기 함수 앞에 지정하면 된다.
 **/
Future<void> greeting(String name, int num) async {
  print("greeting $num 시작");

  // async와 await 키워드를 사용하면 비동기 프로그래밍 특징을 유지하면서
  // 코드가 작성된 순서대로 실행시킬 수 있다.
  await Future.delayed(Duration(seconds: 3), () {
    print("안녕하세요 ${name}님~");
  });

  print("greeting $num 끝");
}

void main() {
  greeting("홍길동", 1);
  greeting("이순신", 2);
}

/*
  //실행결과
  greeting 1 시작
  greeting 2 시작
  안녕하세요 홍길동님~
  greeting 1 끝
  안녕하세요 이순신님~
  greeting 2 끝
 */