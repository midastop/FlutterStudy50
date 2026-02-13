// for 문
void main() {

  // for(초기식; 조건식; 증감식) 문을 이용해 1 ~ 10까지 합 구하기
  int sum = 0;
  for(int i = 1; i <= 10; i++) {
    sum += i;
  }
  print("1 ~ 10 합 : ${sum}\t",);

  // List 같은 순서가 있는 데이터 순차적으로 순회
  List members = ["영철", "강철", "호철"];
  for(String member in members) {
    print(member);
  }
}