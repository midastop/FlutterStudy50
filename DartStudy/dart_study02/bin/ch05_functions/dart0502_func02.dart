// 포지셔널 파리미터(positional parameter), 네임드 파라미터(named parameter)
void main() {

  // 포지셔널 파라미터는 다음과 같이 순서에 맞게 인수를 지정해야 한다.
  print(studentInfo1("홍길동", 3));

  // 네임드 파라미터는 순서가 없으므로 다음과 같이 이름으로 인수를 지정하면 된다.
  print(studentInfo2(grade: 2, name: "임꺽정"));

  // 매개변수의 기본 값이 설정된 함수를 호출할 때 다음과 같이 기본 값이 있는
  // 매개변수는 인수를 지정하지 않고 함수를 호출할 수 있다.
  print(greeting2(name: "이순신"));
}

/* 함수에서 매개변수(parameter)를 사용하는 방식에는 순서가 있는 매개변수를
 * 사용하는 방식과 매개변수에 이름을 지정해 사용하는 방식이 있다.
 * 아래 studentInfo1() 함수와 같이 순서가 있는 매개변수를 사용하는 방식을
 * 포지셔널 파라미터(positional parameter)라고 부른다. 이 방식은 순서를
 * 기반으로 하기 때문에 위치 매개변수라고도 부른다.
 **/
String studentInfo1(String name, int grade) {
  return "$name은 $grade 학년";
}

/* 함수의 매개변수에 이름을 부여하는 방식은 아래와 같이 중괄호 {}와 required 
 * 키워드를 사용하며 이를 네임드 파라미터(named parameter) 방식이라고 한다.
 **/
String studentInfo2({required String name, required int grade}) {
  return "$name은 $grade 학년";
}

/* 다음과 같이 함수의 매개변수에 기본 값을 설정할 수 있다. 이렇게 기본 값이
 * 설정되면 함수를 호출할 때 인수를 지정하지 않아도 함수를 호출할 수 있으며
 * 이런 경우 매개변수에 설정된 기본 값이 사용된다.
 **/
String greeting1(String name, [int age = 20]) {
  return "안녕 $name 당신은 $age세 군요";
}

String greeting2({required String name, int age=20}) {
  return "안녕 $name 당신은 $age세 군요";
}
