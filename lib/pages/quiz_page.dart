import 'package:flutter/material.dart';
import 'package:hair_products/pages/result_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'question': 'Question 1: What is your hair type?',
      'options': ['Dry', 'Oily', 'Normal'],
    },
    {
      'question': 'Question 2: What hair problem would you like to solve?',
      'options': ['Split ends', 'Dandruff', 'Color Fading'],
    },
    {
      'question': 'Question 3: How would you describe the volume of your hair?',
      'options': ['Sparse', 'Normal', 'Thick'],
    },
    {
      'question': 'Question 4: How do you define the health of your hair?',
      'options': ['Damaged', 'Colored', 'Normal'],
    },
    {
      'question': 'Question 5: How often do you wash your hair?',
      'options': ['Every day', 'Every two days', 'Less frequently'],
    },
  ];

  Map<String, dynamic> userAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                questions[currentQuestionIndex]['question'],
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Column(
                children: List.generate(
                  questions[currentQuestionIndex]['options'].length,
                  (index) => ElevatedButton(
                    onPressed: () {
                      saveUserAnswer(index);
                      moveToNextQuestion();
                    },
                    child: Text(
                        questions[currentQuestionIndex]['options'][index],
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 120, 194))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveUserAnswer(int userAnswerIndex) {
    String questionKey = 'Question ${currentQuestionIndex + 1}';
    userAnswers[questionKey] =
        questions[currentQuestionIndex]['options'][userAnswerIndex];
  }

  void moveToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(userAnswers: userAnswers),
          ),
        );
      }
    });
  }
}
