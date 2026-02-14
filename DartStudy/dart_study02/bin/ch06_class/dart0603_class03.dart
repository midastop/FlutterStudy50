// 네임드 생성자(named constructor)
class Tv {
  String name;
  bool isPower = false;
  int? channel;

  // 네임드 생성자(named constructor)
  // "클래스명.네임드 생성자명" 형식으로 생성자를 정의할 수 있으며 나머지는 위와 같다.
  Tv.fromNamed(Map<String, dynamic> map)
      : name = map["name"],
        channel = map["channel"];
        //isPower = map['power'];

  // 다트는 메소드 오버로딩을 지원하지 않지만 다음과 같이 편리하게 선택적 매개변수를
  // 사용할 수 있다. null이 허용되지 않는 프로퍼티는 required를 붙여줘야 한다.
  Tv.creator({required this.name, this.channel, this.isPower=false});
  Tv.creator2(this.name, this.channel, [this.isPower=false]);

  void power() {
    isPower = !isPower;
  }

  int channelUp() {
    return channel! + 1;
  }

  int channelDown() {
    return channel! - 1;
  }
}

void main() {

  Tv t1 = Tv.fromNamed({"name": "안방TV", "channel": 7});
  t1.power();
  print("현재 채널 : ${t1.channelUp()}");

  Tv t2 = Tv.creator(name: "거실TV", channel: 3);
  t2.power();
  print("현재 채널 : ${t2.channelDown()}");
}