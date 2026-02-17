import "package:flutter/material.dart";

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
            ElevatedButton(onPressed: () {}, child: Text("게시글 리스트")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text("게시글 상세보기")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text("게시글 쓰기")),
          ],
        ),
      ),
    );
  }
}
