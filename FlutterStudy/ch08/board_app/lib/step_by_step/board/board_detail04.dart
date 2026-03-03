import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "dart:convert";

// 3. 더미 데이터로 게시글 상세보기 UI 구성하기
class BoardDetailPage extends StatefulWidget {
  const BoardDetailPage({super.key});

  @override
  State<BoardDetailPage> createState() => _BoardDetailPageState();
}

class _BoardDetailPageState extends State<BoardDetailPage> {

  // AppBar 우측의 더 보기 메뉴 PopupMenuButton
  final List<PopupMenuEntry<String>> _popupMenuItems = [
    const PopupMenuItem<String>(
      value: 'update',
      child: Row(
        children: [
          Icon(Icons.edit, color: Colors.black),
          SizedBox(width: 10),
          Text("수정하기"),
        ],
      ),
    ),
    const PopupMenuItem<String>(
      value: 'delete',
      child: Row(
        children: [
          Icon(Icons.delete, color: Colors.black),
          SizedBox(width: 10),
          Text("삭제하기"),
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 상세보기"),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return _popupMenuItems;
              },
              icon: const Icon(Icons.more_vert),
              onSelected: (String value) async {
              },
            )
          ]
        ),        
        body: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.subject),
                      title: Text("제목 : "),
                    )
                  ),
                  Card(
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: Text("작성자 : "),
                      )
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 320,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(80), // 그림자 색상 투명도
                          spreadRadius: 2,  // 그림자 확산 정도
                          blurRadius: 8,    // 그림자 번짐 정도
                          offset: const Offset(4, 4), // 그림자 위치
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SingleChildScrollView(
                      child: Text("내용 : ")
                    )
                  )
                ],
              ),
            ),
    );
  }
}
