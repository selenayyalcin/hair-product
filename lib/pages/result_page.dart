import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final Map<String, dynamic> userAnswers;

  const ResultPage({super.key, required this.userAnswers});

  @override
  Widget build(BuildContext context) {
    String hairType = determineHairType();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Page"),
      ),
      body: Center(
        //padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Your Hair Type: $hairType",
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 120, 194)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              "Recommended Products:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            buildRecommendedProducts(hairType),
          ],
        ),
      ),
    );
  }

  String determineHairType() {
    if (userAnswers['Question 1'] == 'Dry' &&
        userAnswers['Question 2'] == 'Split ends') {
      return 'Dry and Split ends';
    } else if (userAnswers['Question 1'] == 'Oily' &&
        userAnswers['Question 2'] == 'Split ends') {
      return 'Oily and Split ends';
    } else if (userAnswers['Question 1'] == 'Oily' &&
        userAnswers['Question 2'] == 'Dandruff') {
      return 'Oily and Dandruff';
    } else if (userAnswers['Question 1'] == 'Dry' &&
        userAnswers['Question 2'] == 'Dandruff') {
      return 'Dry and Dandruff';
    } else if (userAnswers['Question 1'] == 'Dry' &&
        userAnswers['Question 2'] == 'Color Fading') {
      return 'Dry and Color Fading';
    } else if (userAnswers['Question 1'] == 'Oily' &&
        userAnswers['Question 2'] == 'Color Fading') {
      return 'Oily and Color Fading';
    } else {
      return 'Healthy';
    }
  }

  Widget buildRecommendedProducts(String hairType) {
    if (hairType == 'Dry and Split ends') {
      return const Column(
        children: [
          Text("Moisturizing Shampoo"),
          Text("Repairing Hair Mask"),
        ],
      );
    } else if (hairType == 'Oily and Split Ends') {
      return const Column(
        children: [
          //Text("a"),
          //Text("b"),
        ],
      );
    } else if (hairType == 'Oily and Dandruff') {
      return const Column(
        children: [
          //Text("c"),
          //Text("d"),
        ],
      );
    } else if (hairType == 'Dry and Dandruff') {
      return const Column(
        children: [
          //Text("e"),
          //Text("f"),
        ],
      );
    } else if (hairType == 'Dry and Color Fading') {
      return const Column(
        children: [
          //Text("a"),
          //Text("b"),
        ],
      );
    } else if (hairType == 'Oily and Color Fading') {
      return const Column(
        children: [
          //Text("a"),
          //Text("b"),
        ],
      );
    } else {
      return const Column(
        children: [
          //Text("k"),
          //Text("n"),
        ],
      );
    }
  }
}
