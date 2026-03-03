// 게시글 하나의 정보를 저장하는 모델 클래스
class Board {
  int? no;
  String title;
  String writer;
  String content;
  DateTime? regDate;
  int readCount;
  String pass;
  String? file1;

  Board({
    this.no,
    required this.title,
    required this.writer,
    required this.content,
    this.regDate,
    required this.readCount,
    required this.pass,
    this.file1
  });

  // 팩토리 생성자(Factory Constructor)
  // 생성자에 다음과 같이 factory 키워를 사용해 팩토리 생성자를 정의할 수 있다.
  // 팩토리 생성자는 일반 생성자나 네임드 생성자에 적용할 수 있고 factory 생성자에 붙으면
  // 그 생성자는 내부에서 객체를 생성해 반환해야 한다. 이 생성자 내부에서 this는 사용할 수
  // 없지만 객체를 상수로 반환할 수 있고 심지어 자식 클래스의 객체도 생성해 반환할 수 있다.
  factory Board.fromJson(Map<String, dynamic> json) {
    return Board(
      no: json["no"],
      title: json["title"],
      writer: json["writer"],
      content: json["content"],
      //regDate: json["regDate"],
      regDate: DateTime.parse(json["regDate"]),
      readCount: json["readCount"],
      pass: json["pass"],
      file1: json["file1"],
    );
  }
}

