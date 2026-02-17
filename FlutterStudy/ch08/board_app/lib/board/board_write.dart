import "package:flutter/material.dart";

// 초기화 게시글 쓰기 페이지
class BoardWritePage extends StatefulWidget {
  const BoardWritePage({super.key});

  @override
  State<BoardWritePage> createState() => _BoardWritePageState();
}

class _BoardWritePageState extends State<BoardWritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 쓰기"),
        ),
        body: Center(
          child: Text("BoardWritePage"),
        )
    );
  }
}
