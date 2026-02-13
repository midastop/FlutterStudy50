// 컬렉션(Collection)
/* 컬렉션은 여러 값을 하나의 객체에 담아서 관리할 수 있는 객체로
 * 대표적인 컬렉션에는 List, Set, Map 등이 있다.
 * https://dart.dev/language/collections
 **/
// List
/* List는 여러 값을 순서대로 저장하고 관리해 주는 객체
 * https://api.dart.dev/stable/latest/dart-core/List-class.html
 **/
void main() {
  // List에 저장할 데이터 타입을 <> 안에 지정한다.
  // 이렇게 컬렉션에 저장할 타입을 지정하는 것을 제네릭(Generic)이라고 한다.
  List<String> fruits = ["사과", "배", "망고", "바나나"];

  // List에서 첨자(index)를 사용해 데이터 하나를 꺼내서 출력
  // List의 첫 번째 원소의 index는 0부터 시작한다.
  print(fruits[2]);

  // List의 길이를 반환
  print(fruits.length);

  // index를 이용해 List 안의 값을 변경할 수 있다.
  fruits[1] = "수박";
  print(fruits);

  // List 객체가 비어있는지 또는 비어있지 않은지 여부를 반환
  print(fruits.isEmpty);
  print(fruits.isNotEmpty);

  // List의 맨 뒤에 요소로 추가
  fruits.add("참외");
  fruits[4] = "감";
  print(fruits.join("/"));
}