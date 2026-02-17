import "package:flutter/material.dart";

// PageView에서 map() 함수를 활용해 이미지 출력
class PictureFrame extends StatelessWidget {
  const PictureFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // map() 함수를 활용하면 중복 코드를 줄이고 효율적인 코드를 작성할 수 있음
        children: [1, 2, 3, 4, 5, 6, 7].map((num) {
          return Image.asset("asset/image$num.jpg", fit: BoxFit.cover);
        }).toList(),
      ),
    );
  }
}
