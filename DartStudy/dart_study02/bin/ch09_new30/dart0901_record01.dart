// 레코드 record
// 레코드는 다트 3.0에 새롭게 추가된 새로운 데이터 타입으로 클래스 정의없이
// 여러 데이터를 하나의 테이터 타입으로 묶을 수 있는 익명 데이터 타입이다.
void main() {
  // 포지셔널 파라미터(positional parameter) 방식으로 레코드 정의
  (String, int, String) s1 = ("홍길동", 23, "남성");
  print(s1);
  // 포지셔널 파라미터 방식의 레코드에서 값을 읽으려면 "$순서"를 사용하면 된다.
  print(s1.$3);
  //print();

  // 네임드 파라미터(named parameter) 방식으로 레코드 정의
  ({String name, int age, String gender}) s2 = (
    name: "어머나",
    age: 33,
    gender: "여성",
  );
  print(s2);
  // 네임드 파라미터 방식의 레코드에서 값을 읽으려면 파라미터 이름을 사용하면 된다.
  print(s2.name);
}
