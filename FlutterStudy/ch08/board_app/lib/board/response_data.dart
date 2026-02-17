/*
http 요청과 응답 데이터 처리하기 참고

// 1. 아래 패키지를 pubspec.yaml에 의존성 패키지로 등록하고 pub get
import "package:http/http.dart" as http;
import "dart:convert";

// 2. http 요청하기
Uri url = Uri.parse("http://192.168.0.16:8080/boards/");

// 게시글 리스트를 GET 방식으로 요청하고 결과 데이터를 응답으로 받는다.
final response = await http.get(url);

// 3. 응답 받은 데이터 처리
// 서버에서 받은 응답 객체인 response 객체의 속성
// response.statusCode : http 상태 코드 
// response.body : 응답 데이터를 json 데이터로 읽음 = {"pageCount":20,"startPage":1,"bList":[{"no":200,"title":"감사합니다. ...}, ]}
// response.body를 jsonDecode() 함수로 Dart 자료구조로 변환
var resBody = jsonDecode(response.body);

// response.bodyBytes : 응답 데이터를 binary 데이터로 읽음 = [123, 34, 112, 97, 103, ... ]
// response.bodyBytes 속성을 사용하면 utf8.decode() 함수로 json으로 변환해야 함
// 변환 데이터 : {"pageCount":20,"startPage":1,"bList":[{"no":200,"title":"감사합니다. ...}, ]}
var utf8Decoded = utf8.decode(response.bodyBytes);
// json으로 변환한 데이터를 jsonDecode() 함수로 Dart 자료구조로 변환
// {pageCount: 20, startPage: 1, bList: [{no: 200, title: 감사합니다.,... }, ] }
var resMap = jsonDecode(utf8Decoded);

// 4. Dart 자료구조로 변환한 데이터를 필요한 데이터로 변환하여 사용

    print("pageCount : ${resMap['pageCount']}, startPage : ${resMap['startPage']}");
    var mapList = resMap["bList"];//['bList'];
    var list = mapList.map<Board>((board) {
      return Board.fromJson(board);
    });
    print("list : $list");
    var pageCount = resMap['pageCount'];
    var startPage = resMap["startPage"];
    var endPage = resMap["endPage"];

    print("pageCount :::: $pageCount");

    List<Board> bList = [];

    for(Map<String, dynamic> board in mapList) {
      //print("board : $board");
      Board b = Board.fromJson(board);
      print("b : ${b.regDate}");
      bList.add(b);
    print(bList);



*/