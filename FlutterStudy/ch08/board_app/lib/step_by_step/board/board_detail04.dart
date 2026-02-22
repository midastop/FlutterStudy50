import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "package:board_app/models/board_model.dart";

// 4. SpringBoot RestAPI 서버에서 데이터를 읽어와 게시글 상세보기 출력
class BoardDetailPage extends StatefulWidget {
  const BoardDetailPage({super.key});

  @override
  State<BoardDetailPage> createState() => _BoardDetailPageState();
}

class _BoardDetailPageState extends State<BoardDetailPage> {
  late int no;
  late int pageNum;
  late Board _board;
  late Future<Map<String, dynamic>> futureMap;

  // AppBar PopupMenuButton
  final List<PopupMenuEntry<String>> _popupMenuItems = [
    const PopupMenuItem<String>(
      value: 'update',
      child: Row(
        children: [
          Icon(Icons.edit, color: Colors.black),
          SizedBox(width: 10),
          Text("수정하기"),
        ],
      ),
    ),
    const PopupMenuItem<String>(
      value: 'delete',
      child: Row(
        children: [
          Icon(Icons.delete, color: Colors.black),
          SizedBox(width: 10),
          Text("삭제하기"),
        ],
      ),
    )
  ];

  // 게시글 상세보기를 요청하는 함수
  Future<Map<String, dynamic>> getBoard(int no, int pageNum) async {

    // 게시글 하나를 읽어올 SpringBoot RestAPI 서버 URL
    //Uri url = Uri.parse("http://192.168.0.16:8080/boards/$no/$pageNum");
    Uri url = Uri.parse("http://192.168.0.104:8080/boards/$no/$pageNum");

    // 게시글 리스트를 GET 방식으로 요청하고 결과 데이터를 응답으로 받는다.
    final response = await http.get(url);

    // 응답 본문으로 받은 json 데이터를 Dart의 자료구조(객체)로 변환
    Map<String, dynamic> resMap = jsonDecode(response.body);
    print("resMap : ${resMap}");

    return resMap;
  }

  // state가 변경될 때 마다 호출
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 이전 페이지에서 페이지 이동할 때 보낸 데이터 받기
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    if(args != null) {
      no = args["no"] as int;
      pageNum = args["pageNum"] as int;
      futureMap = getBoard(no, pageNum);
    } else {
      no = 0;
      futureMap = Future.error("게시글 번호가 잘못됨");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 상세보기"),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return _popupMenuItems;
              },
              icon: const Icon(Icons.more_vert),
              onSelected: (String value) async {
              },
            )
          ]
        ),
        // Flutter에서 비동기 데이터를 처리할 때 사용하는 위젯
        body: FutureBuilder<Map<String, dynamic>>(
          future: futureMap,
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
               return Center(child: CircularProgressIndicator());
            } else if(snapshot.hasError) {
              return Center(child: Text("Error : ${snapshot.error}"));
            } else if(!snapshot.hasData) {
              return Center(child: Text("No data found"));
            } else { // 데이터를 성공적으로 받아왔을 때
              var board = snapshot.data!["board"];
              print("board : $board");
              return Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.article),
                        title: Text(board["title"] ?? "제목 : "),
                      )
                    ),
                    Card(
                        child: ListTile(
                          leading: const Icon(Icons.article),
                          title: Text(board["writer"] ?? "작성자 : "),
                        )
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 320,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3), // 그림자 색상 투명도
                            spreadRadius: 2,  // 그림자 확산 정도
                            blurRadius: 8,    // 그림자 번짐 정도
                            offset: const Offset(4, 4), // 그림자 위치
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SingleChildScrollView(
                        child: Text(board["content"] ?? "내용 : ")
                      )
                    )
                  ],
                ),
              );
            }
          },
        )
    );
  }
}
