import "package:flutter/material.dart";

// 초기 PageView에 이미지 출력
class PictureFrame extends StatelessWidget {
  const PictureFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Image.asset("asset/image8.jpg", fit: BoxFit.cover),
          Image.asset("asset/image1.jpg", fit: BoxFit.cover),
          Image.asset("asset/image3.jpg", fit: BoxFit.cover),
          Image.asset("asset/image5.jpg", fit: BoxFit.cover),
          Image.asset("asset/image7.jpg", fit: BoxFit.cover),
        ],
      ),
    );
  }
}
