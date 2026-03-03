
import "package:flutter/material.dart";
import "../page/main_page.dart";

// Navigator 페이지 이동 버튼이 있는 게시글 쓰기 페이지
class BoardWritePage extends StatefulWidget {
  const BoardWritePage({super.key});

  @override
  State<BoardWritePage> createState() => _BoardWritePageState();
}

class _BoardWritePageState extends State<BoardWritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시글 쓰기")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("BoardWritePage"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(context);
              },
              child: Text("이전으로"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 스택에 이전에 쌓여있는 모든 페이지를 제거하고 이동한다.
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                  (route) => false
                );
              },
              child: Text("메인으로"),
            ),
          ],
        ),
      ),
    );
  }
}
