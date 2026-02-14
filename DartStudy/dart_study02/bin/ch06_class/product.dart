class Product {
  // 클래스의 변수 이름이 언터스코어(_)로 시작하면 프라이빗 변수가 된다.
  String _name;
  int _price;

  Product(this._name, this._price);

  // 세터는 set 키워드를 사용해 선언하고 하나의 매개변수만 받을 수 있다.
  set name(String name) {
    this._name = name;
  }

  // 게터는 get 키워드를 사용해 선언하고 매개변수 부분은 사용하지 않는다.
  String get name {
    return _name;
  }

  set price(int price) {
    this._price = price;
  }

  int get price {
    return _price;
  }

  void productInfo() {
    print("상품명 : $_name, 가격 : $_price");
  }
}