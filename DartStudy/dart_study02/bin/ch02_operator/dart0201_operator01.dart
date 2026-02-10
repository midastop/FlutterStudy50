// 수치 연산자(Numeric Operator)
void main() {

  // 사칙 연산자(Arithmetic Operator)
  int i = 10;
  print(i + 2 - 1);
  print(i / 3);
  print(i * 3);
  print(i % 3);

  // 복합 대입 연산자
  i += 2; // i = i + 2;
  print(i);

  // 증감 연산자 : i = i + 1;
  int j = 0;
  // 후 증가 연산자 : i를 s에 대입한 후에 i를 1 증가 시킨다.
  j = i++;
  print(j.toString() + " - " + i.toString());

  j = 0;
  // 선 증가 연산자 : i를 j에 대입하기 전에 i를 1 증가 시킨다.
  j = ++i;
  // String interpolation 기능을 사용해 문자열 내에 변수나 표현식을 포함할 수 있다.
  print("j = $j, i = $i, j + i = ${j + i}");

}