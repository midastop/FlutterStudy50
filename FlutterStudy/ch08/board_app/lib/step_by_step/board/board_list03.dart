import "package:flutter/material.dart";

// 3. 더미 데이터로 게시글 리스트 UI 구성하기
// 상세페이지 링크, FloatingActionButton 추가
class BoardListPage extends StatefulWidget {
  const BoardListPage({super.key});

  @override
  State<BoardListPage> createState() => _BoardListPageState();
}

class _BoardListPageState extends State<BoardListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시글 리스트")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                child: ListTile(
                  leading: Text("10"),
                  title: Text("제목 : Flutter 게시판 만들기"),
                  subtitle: Text("작성자 : 홍길동"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/board/detail", arguments: 101);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/board/insert");
        },
        child: const Icon(Icons.create),
      ),
    );
  }
}
