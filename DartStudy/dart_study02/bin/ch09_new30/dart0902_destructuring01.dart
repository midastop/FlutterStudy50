// 구조 분해(Destructuring)
// 구조 분해는 객체를 복제해서 그 내부의 각각의 값을 추출해 할당하는 문법이다.
void main() {
  // 리스트를 구조 분해하여 내부 값을 다음과 같이 tv, book 변수에 할당할 수 있다.
  final [tv, book] = ["SmartTv", "플러터 앱 개발하기"];
  print(tv + " - " + book);

  // 맵을 구조 분해하여 내부 값을 다음과 같이 name, age 변수에 할당할 수 있다.
  final memberMap = {"name": "홍길동", "나이": 30};
  final {"name": name, "나이": age} = memberMap;
  print("$name - $age");

  // 전개(spread) 연산자를 사용해 리스트를 다음과 같이 구조 분해 할 수 있다.
  final nums = [1, 3, 5, 7, 9];
  final [a, b, ..., c] = nums;
  print("$a - $b - $c");

  // 객체를 구조 분해해서 다음과 같이 productName, productPrice 변수에 할당 할 수 있다.
  final cal = Product(pName: "계산기", price: 25000);
  final Product(pName: productName, price: productPrice) = cal;
  print("$productName - $productPrice");
}

class Product {
  String pName;
  int price;
  Product({required this.pName, required this.price});
}
