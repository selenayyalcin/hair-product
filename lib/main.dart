import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 205, 211),
          title: Text(
            'Hair Product Recommendation',
            textAlign: TextAlign.center,
            style: GoogleFonts.acme(
              textStyle: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.normal,
                color: Colors.pink[300],
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home_page.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, 0.35),
              child: DefaultTextStyle(
                style: GoogleFonts.acme(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Be ready for your life changer experience. \n\nSelect your brand:',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 120.0, // Adjust the bottom margin as needed
              left: 0,
              right: 0,
              child: Center(
                child: AnimatedButton(
                  height: 70,
                  width: 200,
                  text: 'Start Quiz',
                  isReverse: true,
                  selectedTextColor: Colors.pink,
                  backgroundColor: Colors.white54,
                  borderColor: Colors.white,
                  borderRadius: 50,
                  borderWidth: 2,
                  transitionType: TransitionType.LEFT_TO_RIGHT,
                  textStyle: GoogleFonts.acme(
                    textStyle: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.pink,
                    ),
                  ),
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuizRoute()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizRoute extends StatelessWidget {
  const QuizRoute({super.key});
  final Color backgroundColor = const Color.fromRGBO(234, 161, 168, 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 205, 211),
          title: Text(
            'Hair Product Recommendation',
            textAlign: TextAlign.center,
            style: GoogleFonts.acme(
              textStyle: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.normal,
                color: Colors.pink[300],
              ),
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: backgroundColor,
        body: Center(
          child: Container(
            height: 500.0,
            width: 500.0,
            decoration: const BoxDecoration(
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 9.0, // extend the shadow
                  offset: Offset(
                    3.0,
                    5.0,
                  ),
                )
              ],
            ),
            child: FittedBox(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround, //position adjustment
                children: [
                  Text(
                    'QUESTION 1:\n How can you define your hair type?\nA)Straight and voluminous\nB)Curly and frizzy\nC)Damaged from dye and other factors\nD)Dehydrated and dry',
                    style: GoogleFonts.acme(
                      textStyle: TextStyle(
                        fontSize: 10.0, // Adjust the font size as needed
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
