// typedef 함수 - 이거는 참고용 소스로 교안에 추가하지 않음

// typedef는 함수의 시그니처를 정의하는 값으로 보면 된다.
// 아래는 함수는 정의 했지만 함수 몸통이 없어서 어떻게 동작하는지 모른다.
// 이 함수는 시그니처를 맞춰서 새로운 함수를 정의해 사용한다.
// 함수의 시그니처는 반환 타입, 매개변수 개수와 타입 등을 말한다.
typedef Operation = void Function(int x, int y);

void add(int x, int y) {
  print("결괏값 : ${x + y}");
}

void subtract(int x, int y) {
  print('결괏값 : ${x - y}');
}
/* 다트는 함수를 일급 객체(first-class object)로 취급하는데, 이는 함수형 언어의 특징으로
 * 함수를 데이터 처럼 다룰 수 있도록 지원하는 것을 의미한다. 함수를 데이터 처럼 다룰 수 있기
 * 때문에 함수의 매개변수로 함수를 지정할 수 있으며 함수의 반환 값으로도 함수를 사용할 수 있다.
 * 이렇게 함수를 매개변수로 받거나 함수를 반환하는 함수를 고차함수라고 부른다.
 * 플러터에서는 typedef로 정의한 함수를 다음과 같이 함수의 매개변수로 지정해 사용한다.
 **/
void calculate(int x, int y, Operation oper) {
  oper(x, y);
}

void main() {
  Operation oper = add;
  oper(1, 2);

  oper = subtract;
  oper(1, 2);

  calculate(10, 20, add);
}