// 생성자(Constructor)
// https://dart.dev/language/constructors
class Tv {
  String name;
  bool isPower = false;
  int? channel;

  // 생성자의 이름은 클래스 이름과 동일하게 정의해야 한다.
  // 이 생성자를 사용하려면 인스턴스 변수인 name을 선언할 때 late로 선언해야 한다.
  // 이유는 다트에서 인스턴스 변수는 객체가 생성되는 순간에 반드시 값이 있거나, null을
  // 허용해야 하는데 아래 생성자는 객체가 생성되고 생성자의 본문이 실행되어야 비로소
  // 값이 name 변수에 할당되기 때문에 오류가 발생한다.
  //Tv(String name, int channel) { this.name =name; this.channel=channel; }

  // 다음과 같이 콜론(:)을 사용해 몸통은 없고 초기화 리스트가 있는 생성자를 정의할 수 있다.
  // 다트는 자바나 C++ 처럼 메소드 오버로딩을 지원하지 않는다. 이 생성자를 이용하면
  // 인스턴스 변수인 name을 late로 선언하지 않아도 오류가 발생하지 않는다. 다음의 두
  // 생성자는 인스턴스가 생성되는 순간에 값을 할당해 주기 때문에 오류가 발생하지 않는다.
  // Tv(String name, int channel) : this.name = name, this.channel = channel;

  // 위의 생성자를 다음과 같이 초기화 매개변수를 사용해 간단하게 정의할 수 있으며
  // 이 생성자는 생성자의 몸체가 실행되기 전에 매개변수로 받은 값이 인스턴스 변수에
  // 자동으로 할당된다. this는 자신의 인스턴스를 가리키는 자기 참조 변수 이다.
  Tv(this.name, this.channel);

  void power() {
    isPower = !isPower;
  }

  int channelUp() {
    // 위에서 변수를 선언할 때 널 가능한 변수로 선언했기 때문에 아래와 같이
    // 널이 아님을 단언하고 + 연산을 하거나 반환 타입을 int?로 선언해야 한다.
    return channel! + 1;
  }

  int channelDown() {
    return channel! - 1;
  }
}

void main() {
  Tv tv = Tv("거실TV", 3);
  tv.power();
  print("현재 채널 : ${tv.channelUp()}");
}
