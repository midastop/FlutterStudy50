// 상속(Inheritance)
import "../ch06_class/product.dart";

/* 상속은 extends 키워드를 사용해 상속 받을 클래스 이름을 지정하면 된다.
 * 이렇게 상속이 이루어지면 상속해 주는 클래스를 부모 클래스 또는 Super
 * Class라고 하며 상속 받는 클래스를 자식 클래스 또는 Sub Class라고 한다.
 * 상속은 부모 클래스가 가진 멤버(프로퍼티와 메소드)를 자식 클래스에게 물려주는
 * 것을 의미하며 자식 클래스는 상속 받은 멤버를 자신의 것 처럼 사용할 수 있다.
 * https://dart.dev/language/extend
 **/
class Book extends Product {
  String isbn;

  // 부모 클래스의 프라이빗 변수를 자식 클래스의 생성자에서 접근할 수 있다.
  Book(super._name, super.price, this.isbn);

  // 다음과 같이 자식클래스의 생성자에서 부모 클래스의 생성자를 호출할 수 있다.
  // super() 생성자는 부모의 생성자를 호출하는 것으로 맨 뒤에 위치해야 한다.
  Book.creator(String name, int price, String isbn)
    : this.isbn = isbn,
      super(name, price);
}

void main() {
  Book b1 = Book("플러터&다트 프로그래밍", 33000, "9791163034568");
  print(b1.name);

  Book b2 = Book.creator("플러터 프로그래밍", 39600, "9791194383055");
  print(b2.name);
  b2.productInfo();
}
