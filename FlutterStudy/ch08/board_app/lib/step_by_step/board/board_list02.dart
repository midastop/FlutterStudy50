import "package:flutter/material.dart";
import "package:board_app/board/board_detail.dart";

// 2. Navigator 페이지 이동 버튼이 있는 게시글 리스트 페이지
class BoardListPage extends StatefulWidget {
  const BoardListPage({super.key});

  @override
  State<BoardListPage> createState() => _BoardListPageState();
}

class _BoardListPageState extends State<BoardListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시글 리스트")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("BoardListPage"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 스택의 최상위에 있는 페이지를 제거하고 이전 페이지로 돌아간다.
                Navigator.pop(context);
              },
              child: Text("이전으로"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 스택의 최상위에 있는 페이지를 제거하지 않고 이동하려는 페지이로 교체 한다.
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const BoardDetailPage(no: 10),
                  ),
                );
              },
              child: Text("게시글 상세보기"),
            ),
          ],
        ),
      ),
    );
  }
}
