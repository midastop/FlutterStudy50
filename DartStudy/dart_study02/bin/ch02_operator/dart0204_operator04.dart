// null 인지 연산자(Null-aware Operator)와 타입 비교 연산자
// null은 아무 값도 없음을 의미하는 키워드로 0과는 다르다.
// https://dart.dev/null-safety/understanding-null-safety
// https://dart.dev/language/operators#other-operators
void main() {
  // 다트 언어에서는 변수가 null 값을 가질 수 있는지를 명시적으로 지정해야 한다.
  // 변수를 선언할 때 type 뒤에 ?를 지정하면 그 변수는 null 값을 가질 수 있다.
  int? num1 = 1;

  // 오류발생 - 변수 type 뒤에 ?를 명시하지 않아 null 값을 가질 수 없다.
  //int num2 = null;

  // 다음과 같이 변수를 선언하면 자동으로 null 값이 할당 된다.
  int? num3;

  // 다트는 널 안전성(Null Safety)을 지원하는 언어로 프로그래머가 코드에서 널
  // 안전성에 대한 처리를 하지 않으면 null에 대한 논리적인 오류를 최소화하기
  // 위해서  컴파일 단계에서 오류를 발생시킨다. 그래서 변수 뒤에 ! 연산자
  // (Not-null 단언 연산자, Not-null assertion operator)를 붙여서 이 변수가
  // null이 아님을 단언해야 컴파일 할 수 있다. 하지만 변수가 null일 경우
  // 런타임 익셉션을 발생시킨다.
  //num3 = num3! + 1; //num3 = num3 + 1; // 오류 발생

  // ?.(Null-aware Operator) 연산자는 객체가 null이 아닌 경우만 속성에 접근한다.
  print("num3?. : ${num3?.toDouble()}");

  // ??(Null Coalescing) 연산자는 왼쪽 변수가 null인 경우 오른쪽 값을 반환한다.
  print("num3 ?? 10 : ${num3 ?? 10}");

  // ??=(Assignment if Null) 연산자는 변수 값이 null일 때만 값을 할당한다.
  print("num1 ??= 10 : ${num1 ??= 10}");
  print("num3 ??= 5 : ${num3 ??= 5 }");
  print("num3?. : ${num3?.toDouble()}");

  // is 연산자는 변수가 지정한 타입인지 비교하여 논리 값을 반환한다.
  // 다음은 변수 num1이 int 타입이면 true를 int가 아니면 false를 반환한다.
  print(num1 is int);
  print(num1 is String);

  // is! 연산자는 변수가 지정한 타입이 아닌지 비교하여 논리 값을 반환한다.
  // 다음은 변수 num3가 int가 아니면 true를 int 타입이면 false를 반환한다.
  print(num3 is! bool);
  print(num3 is! int);
}