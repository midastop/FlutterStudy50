import "package:flutter/material.dart";

class BoardDeletePage extends StatefulWidget {
  const BoardDeletePage({super.key});

  @override
  State<BoardDeletePage> createState() => _BoardDeletePageState();
}

class _BoardDeletePageState extends State<BoardDeletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 삭제하기"),
        ),
        body: Center(
          child: Text("BoardDeletePage"),
        )
    );
  }
}
