// async와 await 02 - 반환 값이 있는 함수
/* 비동기 처리를 위한 함수의 반환 값은 Future<T>와 같이 제네릭을 사용한다. 아래는 반환
 * 값이 문자열이므로 <String>을 사용했다. 그리고 async 키워드를 함수의 매개변수 정의와
 * 함수 본문 사이에 지정하고 await 키워드를 대기 시킬 비동기 함수 앞에 지정하면 된다.
 **/
Future<String> greeting(String name, int num) async {
  print("greeting $num 시작");
  String result = "";
  // async와 await 키워드를 사용하면 비동기 프로그래밍 특징을 유지하면서
  // 코드가 작성된 순서대로 실행시킬 수 있다.
  await Future.delayed(Duration(seconds: 3), () {
    result = "안녕하세요 ${name}님~";
  });

  print("greeting $num 끝");
  return result;
}

void main() {
  Future<String> result1 = greeting("홍길동", 1);
  //print(result1);
  Future<String> result2 = greeting("이순신", 2);
  print(result2);

  result2.then((result) {
    print(result);
  }, onError: (e) {
    print(e);
  });
}
