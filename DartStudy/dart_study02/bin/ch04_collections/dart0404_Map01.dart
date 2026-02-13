// Map
/* Map은 키와 값 한 쌍으로 데이터를 저장하고 관리해 주는 객체
 * https://api.dart.dev/dart-core/Map-class.html
 **/
void main() {
  Map<String, int> map1 = {"홍길동": 1, "이순신": 4, "강감찬": 2};
  print(map1);

  // 빈 Map 객체를 생성하고 기존의 Map 객체를 데이터를 채움
  Map<String, int> map2 = {};
  map2.addAll(map1);

  // Map이 비어있는지 또는 비어있지 않은지 여부 출력
  print(map2.isEmpty);
  print(map2.isNotEmpty);

  // Map에 있는 키와 값을 이터러블(Iterable) 객체로 가져온다.
  print(map2.keys);
  print(map2.values);

  // Map에 새로운 키를 지정해 다음과 같이 새로운 데이터를 추가할 수 있다.
  map1["을지문덕"] = 3;
  print(map1);
}
