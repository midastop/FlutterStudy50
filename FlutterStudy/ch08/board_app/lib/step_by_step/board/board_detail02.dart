import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "dart:convert";

// 초기화 게시글 상세 페이지
class BoardDetailPage extends StatefulWidget {
  const BoardDetailPage({super.key});

  @override
  State<BoardDetailPage> createState() => _BoardDetailPageState();
}

class _BoardDetailPageState extends State<BoardDetailPage> {

  Future<Map<String, dynamic>> getBoard() async {

    // 게시글을 읽어올 SpringBoot RestAPI 서버 URL
    //Uri url = Uri.parse("http://192.168.0.16:8080/boards/");
    Uri url = Uri.parse("http://192.168.0.104:8080/boards/");

    // 게시글 리스트를 GET 방식으로 요청하고 결과 데이터를 응답으로 받는다.
    final response = await http.get(url);

    // 응답 본문으로 받은 json 데이터를 Dart의 자료구조(객체)로 변환
    var resMap = jsonDecode(response.body);
    print("resMap : ${resMap}");

    return resMap;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 상세보기"),
        ),
        body: Center(
          child: Text("BoardDetailPage"),
        )
    );
  }
}
