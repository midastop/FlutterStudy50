import "package:flutter/material.dart";

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
