import 'package:flutter/material.dart';

// SizedBox, SafeArea, Row, Container 위젯 사용
class RowWidgetExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: SafeArea(
        // Row 위젯은 여러 개의 자식 위젯을 가로 방향으로 배치할 수 있는 위젯으로
        // children 파라미터에 여러 개의 자식 위젯을 리스트에 담아서 지정하면 됨
        // Row와 Column은 주축(main axis)과 교차축(cross axis)의 개념이 있고
        // Row의 주축은 가로 방향이며 교차축은 세로 방향을 의미 함.
        // https://docs.flutter.dev/ui/layout#lay-out-multiple-widgets-vertically-and-horizontally
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 60.0, height: 60.0, color: Colors.red),
            SizedBox(width: 10.0),
            Container(width: 60.0, height: 60.0, color: Colors.green),
            SizedBox(width: 10.0),
            Container(width: 60.0, height: 60.0, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
