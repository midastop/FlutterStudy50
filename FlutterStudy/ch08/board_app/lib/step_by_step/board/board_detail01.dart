import "package:flutter/material.dart";
import "package:board_app/board/board_write.dart";

// Navigator 페이지 이동 버튼이 있는 게시글 상세 페이지
class BoardDetailPage extends StatefulWidget {
  final int no;
  const BoardDetailPage({super.key, required this.no});

  @override
  State<BoardDetailPage> createState() => _BoardDetailPageState();
}

class _BoardDetailPageState extends State<BoardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시글 상세보기")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("BoardDetailPage"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // popUntil()은 스택의 모든 페이지를 바로 닫는다. isFirst를 반환하면
                // 스택 최하위에 있는 라우터를 제외하고 모든 페이지를 닫는다.
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Text("처음으로"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 스택 최상위에 이동하려는 페지이를 추가한다.
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BoardWritePage(),
                  ),
                );
              },
              child: Text("게시글 쓰기"),
            ),
          ],
        ),
      ),
    );
  }
}
