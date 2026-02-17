import 'package:flutter/material.dart';

// Column, Flexible, Container 위젯 사용
class FlexibleExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column (
          children: [
            // Flexible 위젯은 Row 또는 Column에서 많이 사용하는 위젯
            Flexible(
              // flex는 child에 지정한 위젯이 부모의 여유 공간을 얼마의 비율로
              // 차지할지 지정하는 파라미터이며 flex의 기본 값은 1 이다.
              flex: 1,

              // fit은 child에 지정한 위젯이 flex에 지정한 비율 만큼 모두 채울지
              // 또는 자신의 크기 만큼만 채울지를 지정하는 파라미터 이다.
              // FlexFit.loose : 기본 값으로 자식 위젯의 크기 만큼 채움
              // FlexFit.tight : flex에 지정한 비율을 모두 채움
              //fit: FlexFit.loose,
              child: Container(
                color: Colors.orange,
                height: 50.0,
              )
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.green,
                height: 50.0,
              )
            )
          ],
        ),
      ),
    );
  }
}