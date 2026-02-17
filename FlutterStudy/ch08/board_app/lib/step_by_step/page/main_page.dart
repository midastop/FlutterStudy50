import "package:flutter/material.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var btnTextList = [];
    return Scaffold(
      appBar: AppBar(title: Text("메인 화면")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/board/list");
              },
              child: Text("게시글 리스트"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/board/list");
              },
              child: Text("게시글 상세보기"),
            ),
          ],
        ),
      ),
    );
  }
}
