import "package:flutter/material.dart";

// 최초 생성한 게시글 수정 페이지
class BoardUpdatePage extends StatefulWidget {
  const BoardUpdatePage({super.key});

  @override
  State<BoardUpdatePage> createState() => _BoardUpdatePageState();
}

class _BoardUpdatePageState extends State<BoardUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 수정하기"),
        ),
        body: Center(
          child: Text("BoardUpdatePage"),
        )
    );
  }
}
