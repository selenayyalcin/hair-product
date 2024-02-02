import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_products/pages/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              textStyle: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 255, 255, 255),
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
                child: const Text(
                  "Be ready for your life changer experience! ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Positioned(
              bottom: 120.0,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 60),
                  ),
                  child: const Text(
                    "Start Quiz",
                    style: TextStyle(
                        fontSize: 22, color: Color.fromARGB(353, 69, 74, 0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
