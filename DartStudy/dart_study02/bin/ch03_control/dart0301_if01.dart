// if 문
void main() {
  int score = 69;

  // if 문은 조건식이 참일 때 실행되는 조건문 이다.
  // if(조건식) { 조건식이 참일 때 실행 }
  // if(조건식) { 조건식이 참일 때 실행 } else { 조건식이 거짓일 때 실행 }
  if(score >= 70) {
    print("합격");
  } else {
    print("불합격");
  }

  if(score >= 90) {
    print("$score점 : A학점");
  } else if(score >= 80) {
    print("$score점 : B학점");
  } else if(score >= 70) {
    print("$score점 : C학점");
  } else if(score >= 60) {
    print("$score점 : D학점");
  } else {
    print("$score점 : F학점");
  }
}