// switch 문 - 스위치 표현식, 패턴 매칭, 보호 구문
/* Dart 3.0에서 switch 문은 스위치 표현식(switch expression), 가드 절(guard clause),
 * 철저한 검사(exhaustiveness checking), 패턴 매칭(pattern matching) 네 가지가
 * 새로 추가 되었다.
 **/
void main() {
  // switch 문이 함수 처럼 값을 반환
  int score = 89;
  String grade = switch((score / 10).toInt()) {
    10 => "A 학점",
    9 => "A 학점",
    8 => "B 학점",
    7 => "C 학점",
    6 => "D 학점",
    _ => "F 학점"  // default와 같음
  };
  print("$score점은 $grade");

  // Dart 3.0에서 switch 문의 case 절에 when 키워드를 사용해 조건을 추가할 수 있도록
  // 업데이트 되었다. 이렇게 when 키워드를 사용해 case 절에 조건을 지정하는 것을 보호
  // 구문(guard clause)이라고 한다.
  (String name, int age) member = ("홍길동", 18);
  switch(member) {
    case (_, _) when member.$2 >= 19:
      print("${member.$2}세는 성인");
      break;
    default:
      print("${member.$2}세는 미성년자");
  }

  // 철저한 검사는 코드가 입력 받을 수 있는 모든 조건을 확인하고 있는지 체크하는 문법 이다.
  bool? isLogin;
  switch(isLogin) {
    case true:
      print("로그인 상태");
    case false:
      print("로그아웃 상태");
    default:
      // isLogin이 가질 수 있는 값이 true, false, null 이므로
      // 이 default 절을 삭제하면 모든 조건을 확인하지 않았기 때문에 오류가 발생한다.
      print("isLogin = ${isLogin}");
  }
}