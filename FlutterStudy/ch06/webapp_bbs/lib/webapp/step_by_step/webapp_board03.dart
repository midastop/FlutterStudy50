import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

// 웹 뷰 컨트롤러 추가
class WebAppBoard extends StatelessWidget {
  WebAppBoard({super.key});

  // 웹뷰 위젯을 제어하는 컨트롤러
  WebViewController webViewController = WebViewController()
    // 웹 뷰에 출력할 페이지 주소 입력
    //..loadRequest(Uri.parse("https://m.naver.com"))
    ..loadRequest(Uri.parse("http://192.168.0.104:8080/boardList"))
    // 웹 페이지에서 자바스크립트가 제한없이 실행되도록 설정
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 제목과 홈 버튼을 출력하기 위해서 앱바 위젯을 사용
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("WebApp Board"),
        centerTitle: true,
        // 액션 버튼을 추가하고 - 홈 아이콘 버튼
        actions: [
          IconButton(
            // 홈 아이콘 버튼이 클릭되었을 때 게시 글 리스트로 이동
            onPressed: () {
              webViewController.loadRequest(
                Uri.parse("http://192.168.0.104:8080/boardList"),
              );
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: WebViewWidget(controller: webViewController),
    );
  }
}
