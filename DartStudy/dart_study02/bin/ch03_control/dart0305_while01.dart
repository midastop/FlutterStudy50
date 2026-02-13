// while, do while 문
void main() {
  // 조건이 참인 동안 반복 실행되는 while 문
  int i = 1;
  int sum = 0;
  while(i <= 10) {
    sum += i++;
  }
  print("1 ~ 10 합 : $sum");

  // 한 번은 무조건 실행되는 do~while 문
  i = 1;
  sum = 0;
  do {
    sum += i++;
  } while(i <= 10);
  print("1 ~ 10 합 : $sum");
}