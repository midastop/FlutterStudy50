// for 문
void main() {

  int oddSum = 0;
  int evenSum = 0;
  for(int i = 1; i <= 100; i++) {
    if(i % 2 == 0) {
      evenSum += i;
    } else {
      oddSum += i;
    }
  }
  print("1 ~ 100 짝수의 합 : $evenSum");
  print("1 ~ 100 홀수의 합 : $oddSum");

  // for 문을 중첩해서 사용할 수 있음
  String result = "";
  for(int i = 1; i <= 9; i++) {
    for(int j = 2; j <= 9; j++ ) {
      result += "$j x $i = ${j * i}\t";
    }
    result += "\n";
  }
  print(result);
}