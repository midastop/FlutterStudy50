// var, dynamic 키워드를 사용한 변수 선언
void main() {

  // var로 변수를 선언하면 값이 할당될 때 자동으로 자료 형(Data Type)을 추론하며
  // 컴파일 될 때 추론된 타입으로 var이 치환된다.
  var name = 'Dart';
  print(name);

  // 변수는 프로그램 실행 중에 값이 변경될 수 있다.
  name = "플러터";
  print(name);

  // var로 선언된 변수는 타입을 한 번 추론하면 추론된 타입이 고정된다.
  // 위에서 name에 문자열을 저장했기 때문에 자동으로 String 타입의
  // 변수로 추론되기 때문에 정수 타입의 값을 저장할 수 없어서 에러가 발생 한다.
  //name = 1;

  // dynamic으로 선언된 변수 또한 var과 마찬가지로 값이 할당 될 때 테이터
  // 타입을 추론하지만 타입이 고정되지 않아서 다른 타입의 값을 저장할 수 있다.
  dynamic grade = 10;
  print(grade);
  grade = '학년';
  print(grade);
}