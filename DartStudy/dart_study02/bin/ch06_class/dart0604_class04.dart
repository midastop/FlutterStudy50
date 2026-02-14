// 프라이빗 변수와 게터와 세터
import 'product.dart';
class Student {
  /* 프라이빗 변수(private variable)
   * 다트는 자바와 같은 프로그래밍 언어에서 사용하는 접근 제어자(access modifier)가
   * 별도로 존재하지 않는다. 또한 자바에서 프라이빗 변수는 클래스 내부에서만 접근 가능하지만
   * 다트에서 프라이빗 변수는 이와 조금 다르게 같은 파일내에서 접근 가능하다.
   * 다트는 클래스에 변수를 선언하면 기본적으로 퍼블릭 변수이며 모든 파일에서 접근 가능하다.
   * 프라이빗 변수를 만들려면 다음과 같이 변수 이름의 첫 자에 언더스코어(_)를 붙이면 된다.
   **/
  String _name;
  int _age;
  Student(this._name, this._age);
}

void main() {
  Student s1 = Student("홍길동", 20);
  print(s1._age);

  Product p = Product("컴퓨터", 100000);
  // Product 클래스에 _name, _price 변수의 게터를 만들었기 때문에 값을 읽어온다.
  print(p.name);
  print(p.price);
  p.productInfo();

  // Product 클래스에 _name, _price 변수의 세터를 만들었기 때문에 값을 설정할 수 있다.
  p.name = "두쫀쿠";
  p.price = 10000;
  p.productInfo();
}
