import 'package:flutter/material.dart';
//import "webapp/webapp_board.dart";
import "package:webapp_bbs/webapp/webapp_board.dart";

void main() {
  // 플러터가 앱을 실행할 준비가 될 때까지 대기
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: WebAppBoard(),
  ));
}

