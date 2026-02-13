// List의 메소드
void main() {

  List<String> fruits = ["사과", "배", "망고", "바나나"];

  // map() 메서드는 List 안의 값을 순서대로 순회하면서
  // 매개변수로 지정한 함수를 적용해 이터러블(Iterable) 객체로 반환
  final map1 = fruits.map((fruit) {
    return '과일 : $fruit';
  });
  print(map1);

  final map2 = fruits.map((fruit) => '과일 : $fruit');
  print(map2);

  // where() 메서드는 List 안의 값을 순서대로 순회하면서 매개변수로 지정한
  // 함수가 true를 반환하는 값만 선별해 이터러블(Iterable) 객체로 반환
  final where = fruits.where((fruit) => fruit == '사과' || fruit == '망고');
  print(where);

  // reduce() 메서드는 List 안의 값을 순서대로 순회하면서 매개변수로 지정한
  // 함수를 적용해 최종적으로 하나의 결과값을 반환한다. 아래에서 value는 누적값,
  // elem은 List에서 순서대로 꺼내온 값을 저장하는 변수이다. 처음 reduce()
  // 메서드가 실행되면 매개변수로 지정한 함수가 실행되면서 value=fruits[0]의 값,
  // elem=fruits[1]의 값이 할당되고 이 함수가 두 번째 실행될 때 value=
  // 첫번째 실행될 때 반환된 값(배, 사과), elem=fruits[2]의 값이 할당 된다.
  // reduce() 메서드의 결과는 List<String>은 String, List<int>는 int여야 한다.
  final reduce = fruits.reduce((value, elem) => elem + ", " + value);
  print(reduce);

  // fold() 메서드는 List 안의 값을 순서대로 순회하면서 첫 번째 매개 변수로 지정한
  // 값을 초깃값으로 사용해 두 번째 매개변수로 지정한 함수를 적용해 하나의 결과값을
  // 반환한다. 이때 결과값은 fold() 메서드의 제네릭으로 지정한 데이터 타입이어야 한다.
  // 아래에서 두 번째 매개변수로 지정한 함수가 처음 실행될 때 value=초깃값(0),
  // elem=fruits[0]의 값이 할당되고 이 함수가 두 번째 실행될 때 value=첫번째 실행될
  // 때 반환된 값(2 = 0 + 사과(문자 수)), elem=fruits[1]의 값이 할당 된다.
  // reduce와 flod의 가장 큰 차이점은 reduce는 List에 담긴 타입을 결과로 반환하고
  // fold는 List의 내용물과 상관없이 전혀 다른 타입의 결과를 만들 수 있다는 것이다.
  final fold = fruits.fold<int>(0, (value, elem) => value + elem.length);
  print(fold);
}