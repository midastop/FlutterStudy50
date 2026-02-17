import "package:flutter/material.dart";
import "package:board_app/board/board_list.dart";
import "package:board_app/board/board_detail.dart";
import "package:board_app/board/board_write.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("메인 화면"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // 스택 최상위에 현재 이동하려는 페이지를 추가한다.
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BoardListPage(),
                  ),
                );
              },
              child: Text("게시글 리스트"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  // 생성자을 통해서 파라미터 전달
                  MaterialPageRoute(
                    builder: (context) => const BoardDetailPage(no: 3),
                  ),
                );
              },
              child: Text("게시글 상세보기"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
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
