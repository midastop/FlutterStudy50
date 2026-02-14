// 추상 클래스(abstract class)
/* 추상 클래스는 미완성 메소드인 추상 메소드(abstract method)를 가질 수 있는 완성되지
 * 않은 클래스를 말한다. 추상 클래스는 필수적으로 미완성 클래스를 포함해야 되는 것은
 * 아니며 추상 메서드를 가지고 있지 않아도 추상 클래스로 선언할 수 있다. 일단 추상 클래스로
 * 선언되면 미완성 클래스가 되기 때문에 그 자체로는 인스턴스를 생성할 수 없다. 그러므로
 * 상속을 통해서 완성되고 상속 받은 자식 클래스로 인스턴스를 생성해 사용한다.
 **/
abstract class Phone {
  // 추상 클래스도 변수와 생성자를 가질 수 있다.
  String name;
  Phone(this.name);

  // 추상 메소드(abstract method)는 메소드의 시그니처(선언부)만 정의한다.
  void send();
  void receive();
}

/* extends는 클래스를 상속 받지만 implements는 인터페이스를 상속 받을 때 사용한다.
 * 다트에는 "모든 클래스는 암시적 인터페이스(Implicit Interface)를 가진다"라는 독특한
 * 규칙이 있다. 그러므로 다트의 모든 클래스는 클래스이면서 동시에 암시적 인터페이스이므로
 * 다트는 클래스를 상속 받을 때 extends와 implements 두 가지 키워드를 사용할 수 있다.
 * 클래스를 extends로 상속하게 되면 필요한 부분만 재정의해서 오버라이드 하면 되지만
 * implements로 상속하면 인터페이스로 상속하게 되므로 이때는 extends를 사용할 때와 다르게
 * 상위 클래스에 있는 모든 멤버(변수, 메소드)를 재정의해 오버라이드 해야 된다.
 * extends는 하나의 클래스만 상속할 수 있지만 implements는 여러 클래스를 상속할 수 있다.
 * Dart 3.0부터 inteface 키워드를 사용할 수 있도록 지원하고 있다.
 * https://dart.dev/language/class-modifiers
 **/
class HomePhone extends Phone {
  HomePhone(super.name);

  @override
  void send() {
    print("전화를 건다.");
  }

  @override
  void receive() {
    print("전화를 받는다.");
  }
}

void main() {
  Phone p = HomePhone("우리집 전화기");
  p.send();
  p.receive();
}
