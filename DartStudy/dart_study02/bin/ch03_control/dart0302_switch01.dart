// switch 문
void main() {

  String medal = "silver";

  /* switch 문의 () 안의 값이 "gold" 이면 아래의 case "gold" 부분이 실행되고
   * switch 문이 종료된다. 이렇게 switch 문의 () 안의 값에 따라서 해당하는
   * case 문 안의 코드가 실행되고 해당하는 부분이 없을 때는 default 문의 코드가
   * 실행된다. default가 필요하지 않으면 생략할 수 있다.
   **/
  switch(medal) {
    case "gold":
      print("금메일 입니다.");
      break;
    case "silver":
      print("은메달 입니다.");
      break;
    case "bronze":
      print("동메달 입니다.");
      break;
    default:
      print("no 메달 입니다.");
      break;
  }
}