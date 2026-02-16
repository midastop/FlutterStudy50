// 객체지향 상속 extends, implements 테스트
//import "dart0703_abstract01.dart";

class Phone {
  String? name;

  setName(String name) {
    this.name = name;
  }
}

// implements는 상위 클래스의 모든 맴버를 오버라이딩 해야 한다.
class MyPhone1 implements Phone {
  @override
  String? name;

  @override
  setName(String name) {
    this.name = name;
  }
}

// extends는 오버라이딩이 필요없이 상속받은 맴버를 그대로 사용할 수 있다.
class MyPhone2 extends Phone {
  MyPhone2();
}

void main() {
  Phone p1 = MyPhone1();
  p1.setName("테스트");
  print(p1.name);

  Phone p2 = MyPhone2();
  p2.setName("호호");
  print(p2.name);
}
