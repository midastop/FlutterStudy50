// switch 문 - 패턴 매칭
void matcher(dynamic any) {
  // switch 문에서 패턴 매칭을 통해서 복잡한 데이터를 조건으로 만들어 체크할 수 있다.
  switch (any) {
    case 'abc': // 문자열 "abc"와 매치
      print("match 'abc' : $any");
      break;
    case [1, 2]: // 리스트 [1, 2]와 매치
      print("match [1, 2]: $any");
      break;
    case [_, _, _]: // 값이 3개인 리스트와 매치
      print("match [_, _, _] : $any");
      break;
    case [int a, String b]: // [int, String] 값을 가진 리스트와 매치
      print("match [int a, String b] : $any");
      break;
    case (String a, int b): // (String, int) 값을 가진 레코드와 매치
      print("match (String a, int b) : $any");
      break;
    default:
      print("no match : $any");
      break;
  }
}

void main() {
  matcher("abc");
  matcher([1, 2]);
  matcher([1, 3, 5]);
  matcher([10, '안녕']);
  matcher(("홍길동", 20));
  matcher([10, 10]);
  matcher("ab3");
  matcher(["홍길동", 1, false]);
}

/*
  match 'abc' : abc
  match [1, 2]: [1, 2]
  match [_, _, _] : [1, 3, 5]
  match [int a, String b] : [10, 안녕]
  match (String a, int b) : (홍길동, 20)
  no match : [10, 10]
  no match : ab3
  match [_, _, _] : [홍길동, 1, false]
* */
