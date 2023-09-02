import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 205, 211),
          title: const Text('Hair Product Recommendation',
              textAlign: TextAlign.center),
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
            const Align(
              alignment: Alignment(0.0, 0.35),
              child: DelayedTextWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class DelayedTextWidget extends StatefulWidget {
  const DelayedTextWidget({super.key});

  @override
  _DelayedTextWidgetState createState() => _DelayedTextWidgetState();
}

class _DelayedTextWidgetState extends State<DelayedTextWidget> {
  String delayedText = '';

  @override
  void initState() {
    super.initState();
    _loadDelayedText();
  }

  void _loadDelayedText() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        delayedText =
            'Be ready for your life changer experience. \n\n Select your brand:';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      delayedText,
      style: const TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
