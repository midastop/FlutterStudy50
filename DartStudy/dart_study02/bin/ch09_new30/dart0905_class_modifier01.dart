// 클래스 한정자(class modifier)
/* Dart 3.0에서 클래스의 상속 및 구현을 제한하는 다음과 같은 새로운 한정자가 추가되었다.
 * 클래스 한정자는 class 키워드 앞에 붙여 사용한다.
 *
 * sealed : 같은 파일 내에서 상속, 구현 가능, 다른 파일에서 상속, 구현 불가능
 * interface : 같은 파일 내에서 상속, 구현 가능 다른 파일에서 구현만 가능
 * final : 같은 파일 내에서 상속, 구현 가능, 다른 파일에서 상속, 구현 불가능
 * base : 모든 파일에서 상속 가능 하지만 상속 받는 클래스는 base, final,
 *        sealed 중 하나의 한정자를 사용해 정의해야 함
 * mixin : mixin을 클래스에 사용할 수 있으며 일반 mixin과 같은 역할을 하며 상속이 가능
 **/
import "class_modifier01.dart";

base class Parent {}

// base 한정자인 클래스를 상속하려면 하위 클래스는 base, final, sealed 여야 한다.
base class Child1 extends Parent {}

// class Child2 extends Parent { }  오류 발생
sealed class Child2 extends Parent {}

final class Sub01 extends Child2 {}

// final로 정의한 클래스라도 같은 파일에서 상속이 가능하다.
sealed class Sub02 extends Sub01 {}

// class_modifier01.dart 파일에 정의한 Animal1 클래스는 sealed 한정자를 사용해
// 정의된 클래스이므로 다른 파일에 있는 클래스는 상속할 수 없어서 오류가 발생한다.
// final class Dog extends Animal1 { }

// class_modifier01.dart 파일에 정의한 Cat 클래스는 final 한정자를 사용해
// 정의된 클래스이므로 다른 파일에 있는 클래스는 상속할 수 없어서 오류가 발생한다.
// final class NyangNyang extends Cat {}

// interface로 정의한 클래스는 외부 파일에서 상속할 수 없고 구현만 가능하다.
//class MyHomePhone1 extends Phone {}
class MyHomePhone2 implements Phone {}

void main() {
  // base, final 한정자를 사용한 클래스는 인스턴스를 생성할 수 있따.
  Parent p1 = Parent();
  Sub01 sub01 = Sub01();

  // sealed 한정자로 정의한 클래스는 인스턴스를 생성할 수 없다.
  //Sub02 sub02 = Sub02();

  // final로 정의한 클래스도 다른 파일에서 인스턴스를 생성할 수 있다.
  Cat cat = Cat();
}
