import 'package:flutter/material.dart';

void main() {
  // 플러터 앱을 실행해 주는 함수
  runApp(MyApp());
}

// StatefulWidget으로 상태 관리하기
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({super.key});
  int _count = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MaterialApp은 Material 디자인을 사용할 수 있도록 지원하는 위젯으로
    // Flutter 앱에서 항상 최상위에 MaterialApp 위젯을 사용해야 한다.
    return MaterialApp(
      // Root Widget
      // 화면 우측 상단에 표시되는 DEBUG 베너 제거 설정
      debugShowCheckedModeBanner: false,

      // MaterialApp 바로 아래 home 파라미터에 Scaffold 위젯을 사용
      // Scaffold 위젯은 화면 하나의 전체 구조를 만들 수 있도록 지원하는 위젯
      home: Scaffold(
        // AppBar는 앱 상단에 표시되는 위젯으로 메뉴, 제목 등을 표시하거나 이외에 다양한 용도로 활용할 수 있다.
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Flutter Widget Tree"),
        ),

        // Scaffold의 body 파라미터에 다양한 위젯을 배치해 화면을 구성한다.
        // 위젯은 child 또는 children 파라미터를 사용해 하위에 자식 위젯을 배치한다.
        // child는 하나의 위젯을 지정할 수 있고 children은 여러 위젯을 지정할 수 있다.
        // child와 children 파라미터 두 가지를 모두 제공하지는 않으며 위젯에 따라서
        // child 파라미터를 제공하거나 children 파라미터를 제공한다.
        // Center는 자식 위젯을 부모 위젯에 정 가운데 표시하는 위젯임
        body: Center(
          // Column 위젯은 여러 개의 자식 위젯을 세로 방향으로 배치할 수 있는 위젯임
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "push : $_count",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF963AC1),
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  print("Elevated 버튼 클릭됨");
                },
                child: Text("ElevatedButton"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // setState() 함수 안에서 상태를 변경하면 Flutter 프레임워크에게 전달되고
            // 변경된 상태를 기반으로 build() 함수를 다시 실행시켜서 화면을 갱신한다.
            setState(() {
              _count++;
            });
            print("플로팅 버튼 클릭됨 : $_count");
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
