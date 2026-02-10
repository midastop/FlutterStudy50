// 비교 연산자와 논리 연산자
void main() {
  int num1 = 10;
  int num2 = 5;

  // 변수의 값이 같은지 비교하여 논리 값(true, flase)을 반환한다.
  print(num1 == num2);
  print(num1 != num2);

  // 변수의 값의 크기를 비교하여 논리 값(true, false)을 반환한다.
  print(num1 > num2);
  print(num1 <= num2);

  // 논리 연산자는 논리 값(true, flase)을 대상으로 and, or, not 연산을 수행하여
  // 그 결과를 논리 값으로 반환하는 연산자로 비교 연산자와 함께 쓰이는 경우가 많다.
  // &&(and) 연산자는 양 변의 값이 모두 true 일 때 true, 그외는 false를 반환한다.
  print(num1 > num2 && 1 > 0);

  // ||(or) 연산자는 양 변의 값 중 하나만 true여도 true를 반환한다.
  print(num1 > num2 || 1 < 0);

  // !(not) 연산자는 true면 flase, false면 true를 반환하는 연산자 이다.
  print(! true);
}