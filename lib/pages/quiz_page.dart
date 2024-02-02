import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Quiz sayfasının içeriği buraya eklenebilir
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Page"),
      ),
      body: Center(
        child: Text("This is the quiz page"),
      ),
    );
  }
}
