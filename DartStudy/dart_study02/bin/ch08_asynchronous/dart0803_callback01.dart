// 콜백 함수(callback function)
void order() {
  print("음식을 주문 받음");
}

void cooking(callback) {

  Future.delayed(Duration(seconds: 3), () {
    print("음식을 조리 중...");

    /* 콜백 함수는 이벤트 처리나 비동기 처리 등에서 많이 사용되는 방식으로 특정 이벤트가
     * 발생하거나 데이터 통신이 완료되었을 때 실행할 함수를 미리 등록해 놓고 해당 상황이
     * 발생하면 등록한 함수를 자동으로 호출하는 방식이다. 이렇게 자동으로 호출되는 함수를
     * 콜백 함수라고 하며 여기서는 매개변수로 받는 callback라는 함수가 콜백 함수이다.
     **/
    callback();
  });
}

void complete() {
  print("조리 완료");
}

void main() {
  // 다음과 콜백 함수(callback function)를 사용하면 비동기 처리를 하면서
  // 코드의 실행 순서를 제어할 수 있다.
  order();
  cooking(complete);
}
/*
  //실행결과
  음식을 주문 받음
  음식을 조리 중...
  조리 완료
 */