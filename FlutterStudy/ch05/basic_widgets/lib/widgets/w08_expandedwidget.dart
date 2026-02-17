import "package:flutter/material.dart";

// Column, Expanded, Container 위젯 사용
class ExpandedExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Expanded 위젯은 Flexible 위젯을 상속한 위젯으로 Row나 Column에서
            // 이 위젯을 사용하면 남아 있는 공간을 최대한으로 차지하게 설정할 수 있다.
            // flex : 1, fit : FlexFit.tight로 설정되어 있는 위젯이다.
            Expanded(
              child: Container(
                color: Colors.orange,
              )
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              )
            ),
          ],
        ),
      ),
    );
  }
}

