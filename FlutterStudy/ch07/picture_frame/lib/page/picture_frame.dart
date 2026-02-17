import "package:flutter/material.dart";
import "dart:async"; // 타이머를 사용하기 위한 import

class PictureFrame extends StatefulWidget {
  const PictureFrame({super.key});

  @override
  State<PictureFrame> createState() => _PictureFrameState();
}

class _PictureFrameState extends State<PictureFrame> {
  // PageView를 제어하기 위한 PageController
  final PageController pageController = PageController();

  // initState() 함수는 state가 생성될 때 한 번만 실행되는 생명주기 메소드 이다.
  // 생명주기 메소드 실행 순서는 PictureFrame() - createState() - initState()
  // didChangeDependencies() - build() - deactivate() - dispose()
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      // 2.5초 마다 동작하는 타이머 등록
      Duration(milliseconds: 2500),
      (timer) {
        // print("Timer");
        // 현재 페이지 가져오기
        int? nextPage = pageController.page?.toInt();
        if (nextPage == null) {
          // 페이지 값이 없으면 종료
          return;
        }
        if (nextPage == 6) {
          // 마지막 페이지면 첫 페이지 지정
          nextPage = 0;
        } else {
          nextPage++;
        }
        print("nextPageTimer : $nextPage");

        // 다음 페이지로 이동
        pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          // 애니메이션 효과
          // https://api.flutter.dev/flutter/animation/Curves-class.html
          curve: Curves.decelerate,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5, 6, 7].map((num) {
          return Image.asset("asset/image$num.jpg", fit: BoxFit.cover);
        }).toList(),
      ),
    );
  }
}
