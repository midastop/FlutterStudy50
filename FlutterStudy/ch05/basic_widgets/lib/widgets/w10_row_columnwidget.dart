import 'package:flutter/material.dart';

// Container, Row, Column, Image, CircularProgressIndicator, SizedBox, Flexible, Expanded 위젯 사용
class RowAndColumnExam extends StatelessWidget {
  const RowAndColumnExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // BoxDecoration 위젯은 Container 위젯의 디자인 적용하는 위젯으로
      // 컨테이너의 배경색, 테두리 등의 속성을 설정할 수 있음
      //width: double.infinity,
      decoration: BoxDecoration(color: Colors.deepOrange),
      // 앞의 w09_circular_indicator와 비슷한 배치
      // Container의 width: double.infinity 대신 Row를 위젯을 사용함
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/flutter_log.png', width: 200),
              // 로딩 애니메이션 위젯
              CircularProgressIndicator(color: Colors.white),
              SizedBox(height: 50.0),
              Flexible(child: Image.asset('assets/flutter_log.png')),
              Expanded(child: CircularProgressIndicator()),
            ],
          ),
        ],
      ),
    );
  }
}
