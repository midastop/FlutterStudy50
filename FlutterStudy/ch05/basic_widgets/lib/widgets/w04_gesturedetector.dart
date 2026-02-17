import 'package:flutter/material.dart';

// Floating Action Button, SafeArea, Gesture Dector, Container, Padding 위젯 사용 
class GestureDetectorExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 화면 아래 우측에 둥글게 떠있는 버튼
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("floating clicked");
          },
          child: Text('클릭'),
        ),

        // 핸드폰 화면 상단과 같이 노치가 있는 부분에서 위젯이 가려질 수 있는데
        // 이럴 때 SafeArea 위젯을 사용하면 기기별로 예외처리를 하지 않아도
        // 안전한 화면 영역 안에 위젯을 그릴 수 있다.
        body: SafeArea(
          // GestureDetector는 사용자의 다양한 입력을 감지하는 위젯으로
          // 그에 따른 다양한 이벤트를 처리할 수 있는 파라미터를 제공한다.
          child: GestureDetector(
            onTap: () {
              print('on Tap');
            },
            onDoubleTap: () {
              print('on Double Tap');
            },
            onLongPress: () {
              print("on long Press");
            },
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
              // Padding 위젯으로 상위 위젯과 하위 위젯 사이의 여백을 줄 수 있음
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 100.0,
                  horizontal: 50.0,
                ),
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
