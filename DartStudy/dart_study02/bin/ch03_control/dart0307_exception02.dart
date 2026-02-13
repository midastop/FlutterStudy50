// 에러 처리(Exception Handling)
void main() {
  // 예외가 발생하는 상황의 try ~ catch 흐름
  print("1번");
  try {
    print("2번");
    throw Exception("강제로 예외를 발생시킴...");
    // 예외가 발생되면 바로 catch 블럭으로 이동되어 3번은 출력되지 않음
    print("3번");

  } catch(e) {
    // try 블럭에서 예외가 발생하여 4번이 출력됨
    print("4번");
    print(e);

  } finally {
    // finally 블록은 필요하지 않으면 생략할 수 있다.
    // 예외가 발생하거나 정상 흐름 모두 항상 finally 블럭이 실행된다.
    print("5번");
  }
}