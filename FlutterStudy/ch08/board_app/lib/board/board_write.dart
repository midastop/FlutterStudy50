import "package:flutter/material.dart";

// 최초 생성한 게시글 쓰기 페이지
class BoardWritePage extends StatefulWidget {
  const BoardWritePage({super.key});

  @override
  State<BoardWritePage> createState() => _BoardWritePageState();
}

class _BoardWritePageState extends State<BoardWritePage> {

  // 게시글 입력 필드 제어를 위한 컨트롤러
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _writerController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시 글 쓰기"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("제목", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  hintText: "제목을 입력하세요",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("작성자", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                controller: _writerController,
                decoration: const InputDecoration(
                  hintText: "작성자를 입력하세요",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("비밀번호", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                controller: _passwordController,
                obscureText: true,  // 텍스트 입력시 * 표로 표시
                decoration: const InputDecoration(
                  hintText: "수정/삭제 시 사용할 비밀번호",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("작성자", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                controller: _contentController,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: "내용을 입력하세요",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(130, 50),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("등록하기")
                  ),
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(130, 50),
                    ),
                    child: const Text("목록보기"),
                  ),
                ],
              ),
            ],
          ),
        ),
    );

    // 페이지를 이동할 때 실행되는 생명주기 메소드를 이용해 메모리 정리
    @override
    void dispose() {
      _titleController.dispose();
      _writerController.dispose();
      _passwordController.dispose();
      _contentController.dispose();
      super.dispose();
    }
  }
}
