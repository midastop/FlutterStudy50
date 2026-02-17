import 'package:flutter/material.dart';

class ImageWidgetExam extends StatelessWidget {
  const ImageWidgetExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      // Container의 너비를 화면 전체로 지정
      width: double.infinity,

      // Column 위젯은 여러 개의 자식 위젯을 세로 방향으로 배치할 수 있는 위젯으로
      // children 파라미터에 여러 개의 자식 위젯을 리스트에 담아서 지정하면 됨
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // pubspec.yaml 파일에 지정한 에셋 이미지 경로를 다음과 같이 지정하면 assets 경로에서 이미지를 읽는다.
          Image.asset('assets/images/flutter_log.png'),

          // SizedBox 위젯은 일반적으로 일정 크기의 공간을 공백으로 둘 때 사용
          // Container 위젯도 가능하지만 성능면에서 SizeBox가 유리함
          SizedBox(height: 20.0),
          Text(
            "플러터 로고",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
