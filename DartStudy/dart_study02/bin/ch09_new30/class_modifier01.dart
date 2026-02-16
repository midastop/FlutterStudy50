sealed class Animal {}

// sealed 한정자로 정의한 클래스는 같은 파일 안에서만 상속할 수 있다.
final class Cat extends Animal {}

// 상위 클래스가 final이므로 상속 받는 클래스는 base, final, sealed여야 한다.
final class NyangNyang extends Cat {}

// interface로 정의한 클래스는 같은 파일에서 상속과 구현을 할 수 있다.
interface class Phone {}

class MyHomePhone1 extends Phone {}

class MyHomePhone2 implements Phone {}
