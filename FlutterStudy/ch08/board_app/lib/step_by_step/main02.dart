import 'package:flutter/material.dart';
import "page/main_page.dart";
import "../board/board_list.dart";
import "../board/board_detail.dart";
import "../board/board_write.dart";
import "../board/board_update.dart";
import "../board/board_delete.dart";

// 라우터 설정
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Board App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/main",
      routes: {
        // 라우터 전용 클래스를 만들어 UI 소스에서 분리가 필요함
        // https://docs.flutter.dev/ui/navigation
        "/main": (context) => MainPage(),
        "/board/list": (context) => BoardListPage(),
        "/board/detail": (context) => BoardDetailPage(),
        "/board/write": (context) => BoardWritePage(),
        "/board/update": (context) => BoardUpdatePage(),
        "/board/delete": (context) => BoardDeletePage(),
      },
    );
  }
}
