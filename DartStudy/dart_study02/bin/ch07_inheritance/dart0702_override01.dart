// 메서드 재정의(override)
import "../ch06_class/product.dart";

class Computer extends Product {
  String spec;

  //Computer(String name, int price, String spec)
  //  : this.spec = spec,
  //    super(name, price);

  // 다음과 같이 초기화 매개변수를 사용하면 보다 간결하게 생성자를 정의할 수 있다.
  Computer(super.name, super.price, this.spec);

  /* 클래스, 변수, 메소드에 "@"으로 시작하는 키워드를 붙일 수 있는데 이런
   * 키워드를 어노테이션(annotation)이라고 부른다. 부모 클래스에서 상속 받은
   * 메서드를 자식 클래스에서 수정(메소드 재정의라고 함)해서 사용하는 것을
   * 오버라이드(override)라고도 한다. 상속 받은 메소드를 자식 클래스에서 매번
   * 오버라이드 해야 하는 것은 아니며 수정이 필요할 때 오버라이드 하면 된다.
   * 오버라이드가 성립되려면 부모 클래스에서 정의한 메소드 시그니처(메서드의 반환
   * 타입, 메소드 이름, 메소드 매개변수의 타입과 개수)가 모두 같아야 한다.
   **/
  @override
  void productInfo() {
    print("상품명 : ${super.name}, 가격 : ${super.price}, 스펙 : ${spec}");
  }
}

void main() {
  Computer com1 = Computer("컴퓨터1", 599000, "Core-i5 - 16GB");
  com1.productInfo();

  // 자식의 인스턴스를 부모 타입의 변수가 참조할 수 있다.
  Product com2 = Computer("컴퓨터2", 799000, "Core-i7 - 16GB");

  // 부모 타입의 변수이지만 실제 인스턴스는 자식 클래스의 인스턴스이므로
  // 자식 클래스에서 재정의한 메소드가 호출된다.
  com2.productInfo();
}
