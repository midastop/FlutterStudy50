import "package:flutter/material.dart";

// 1. 초기 작성 게시글 리스트 페이지
class BoardListPage extends StatefulWidget {
  const BoardListPage({super.key});

  @override
  State<BoardListPage> createState() => _BoardListPageState();
}

class _BoardListPageState extends State<BoardListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 리스트"),
        ),
        body: Center(
          child: Text("BoardListPage"),
        )
    );
  }
}
