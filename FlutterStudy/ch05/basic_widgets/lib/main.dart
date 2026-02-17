import 'package:flutter/material.dart';
import 'widgets/w01_textwidget.dart';
import 'widgets/w02_imagewidget.dart';
import 'widgets/w03_buttonwidget.dart';
import 'widgets/w04_gesturedetector.dart';
import 'widgets/w05_rowwidget.dart';
import 'widgets/w06_columnwidget.dart';
import 'widgets/w07_flexiblewidget.dart';
import 'widgets/w08_expandedwidget.dart';
import 'widgets/w09_circular_indicator.dart';
import 'widgets/w10_row_columnwidget.dart';

void main() {
  // WidgetExam 안에서 body를 변경하는 것은 hot reload가 적용됨
  runApp(WidgetExam());

  // runApp()에 위젯을 변경하는 것은 main.dart를 다시 실행해야 함
  //runApp(ImageWidgetExam());
}

class WidgetExam extends StatelessWidget {
  const WidgetExam({super.key});

  // build() 함수는 위젯의 UI를 구성하는 핵심적인 역할을 하며 위젯 트리에
  // 표시될 위젯을 반환하도록 구현하면 된다. 다시 말해 화면에 보여주고 싶은
  // 위젯이 반환되도록 구현하면 된다. 모든 위젯 클래스는 build() 함수를
  // 가지고 있으며 이 함수에서 반환하는 위젯이 화면에 렌더링 된다.
  @override
  Widget build(BuildContext context) {
    // MaterialApp은 Material 디자인을 사용할 수 있도록 지원하는 위젯으로
    // Flutter 앱에서는 MaterialApp을 항상 최상위 위젯으로 사용함
    return MaterialApp(
      // Scaffold는 하나의 화면 구조를 만들 수 있도록 지원하는 위젯으로
      // MaterialApp의 home 파라미터에 Scaffold 위젯을 사용함
      home: Scaffold(
        //body: TextWidgetExam(),
        //body: ImageWidgetExam(),
        //body: ButtonWidgetExam(),
        //body: GestureDetectorExam(),
        //body: RowWidgetExam(),
        //body: ColumnWidgetExam(),
        //body: FlexibleExam(),
        //body: ExpandedExam(),
        body: CircularIndicatorExam(),
      ),
    );
  }
}
