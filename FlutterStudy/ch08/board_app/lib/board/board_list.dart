import "package:flutter/material.dart";
import "package:board_app/models/board_model.dart";
import "package:async/async.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "package:intl/intl.dart";

// 4. SpringBoot RestAPI 서버에서 데이터를 받아와 게시글 리스트 UI 구성하기
class BoardListPage extends StatefulWidget {
  const BoardListPage({super.key});

  @override
  State<BoardListPage> createState() => _BoardListPageState();
}

class _BoardListPageState extends State<BoardListPage> {
  // 게시글 리스트에서 사용되는 데이터 = 상태(state)라고 함
  List<dynamic> bList = [];
  int startPage = 1;
  int endPage = 10;
  int pageNum = 1;
  int pageGroup = 10;

  // SpringBootRestAPI에 게시글 리스트를 요청하는 함수
  Future<Map<String, dynamic>> getBoardList() async {
    // 게시글 리스트를 읽어올 SpringBoot RestAPI 서버 URL
    //Uri url = Uri.parse("http://192.168.0.16:8080/boards/");
    Uri url = Uri.parse("http://192.168.0.2:8080/boards/");

    // 게시글 리스트를 GET 방식으로 요청하고 결과 데이터를 응답으로 받는다.
    final response = await http.get(url);

    // 응답 본문으로 받은 json 데이터를 Dart의 자료구조(객체)로 변환
    Map<String, dynamic> resMap = jsonDecode(response.body);
    print("resMap : ${resMap}");

    return resMap;
  }

  // state가 생성될 때 한 번 실행
  @override
  void initState() {
    super.initState();
    getBoardList().then(
      (resMap) {
        setState(() {
          bList = resMap["bList"];
          pageNum = resMap["currentPage"];
          startPage = resMap["startPage"];
          endPage = resMap["endPage"];
          pageGroup = resMap["pageGroup"];
        });
      },
      onError: (e) {
        print("error : $e");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시글 리스트")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: ListView.builder(
          itemCount: bList.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              child: Card(
                child: ListTile(
                  leading: Text(bList[i]["no"].toString()),
                  title: Text(bList[i]["title"]),
                  //subtitle: Text("${_resMap['bList'][i]['writer']}"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${bList[i]['writer']}"),
                      Text(
                        DateFormat(
                          'yyyy-MM-dd',
                        ).format(DateTime.parse(bList[i]["regDate"])),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/board/detail",
                  // 다음 페이지로 보낼 파라미터를 arguments에 Map으로 전달
                  arguments: {"no": bList[i]["no"], "pageNum": pageNum},
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/board/write");
        },
        child: const Icon(Icons.create),
      ),
    );
  }
}
