import 'package:flutter/material.dart';

// Center, Column, SizedBox, 여러 버튼 위젯 사용
class ButtonWidgetExam extends StatelessWidget {
  const ButtonWidgetExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 버튼은 사용자의 제스처에 반응하는 위젯으로 사용자가 버튼 위젯을 누르거나
          // 또는 길게 누를 때 등의 이벤트를 처리할 수 있는 파라미터를 제공한다.
          // 사용자가 키보드로 글자를 입력하는 것을 제외한 모든 행위를 제스처(Gesture)라 함
          TextButton(
            onPressed: () { // 버튼이 눌릴 때 이벤트 처리
              print('TextButton Clicked');
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text("텍스트 버튼"),
          ),
          OutlinedButton( // 테두리가 있는 버튼
            onPressed: () {
              print('OutlinedButton Clicked');
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.blue),
            child: Text("아웃라인드 버튼"),
          ),
          SizedBox(height: 40.0),
          ElevatedButton( // 입체적으로 튀어나온 버튼
            onPressed: () {
              print('ElevatedButton Clicked');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
            ),
            child: Text("엘리베이티드 버튼"),
          ),
          IconButton(
            onPressed: () {
              print("IconButton");
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
