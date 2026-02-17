
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

