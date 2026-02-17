import "package:flutter/material.dart";

// 앱바 위젯 추가
class WebAppBoard extends StatelessWidget {
  const WebAppBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 제목과 홈 버튼을 출력하기 위해서 앱바 위젯을 사용
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("WebApp Board"),
        centerTitle: true,
      ),
      body: Center(child: Text("WebApp Board")),
    );
  }
}
