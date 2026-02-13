// Set
/* Set은 순서가 없는 고유한 항목의 집합을 표현하기 위한 객체
 * Set은 중복이 없는 고유한 값을 저장하고 관리해 주는 객체로 집합을 표현하기 위한 객체
 * https://api.dart.dev/dart-core/Set-class.html
 **/
void main() {
  Set<int> nums = {1, 3, 5};

  // Set은 값이 중복되지 않도록 관리해 유일한 값만 저장 되도록 보장한다.
  nums.add(3);
  nums.add(7);
  print(nums);

  // Set 객체가 비어있는지 또는 비어있지 않은지 여부를 반환
  print(nums.isEmpty);
  print(nums.isNotEmpty);

  // 비어있는 Set 객체를 생성하고 List를 Set으로 변환
  Set<String> fSet = <String>{};
  List<String> fruits = ["사과", "감", "복숭아", "감"];
  fSet.addAll(fruits);
  print(fSet);
  print(Set.from(fruits));

  // Set은 순서를 보장하지 않기 인덱싱([])을 지원하지 않는다.
  //print(fSet[3]);
  print(fSet.elementAt(0));
}
