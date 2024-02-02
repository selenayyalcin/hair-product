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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
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
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 120, 194)),
              ),
              const SizedBox(height: 10),
              buildRecommendedProducts(hairType),
            ],
          ),
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
    if (hairType == 'Dry and Split ends' || hairType == 'Oily and Split Ends') {
      return Column(
        children: [
          const Text("Moisturizing Shampoo Set"),
          Image.asset(
            'assets/repair.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          const Text("Repairing Hair Mask"),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/dry_hair_cream.jpg',
                  width: 300,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/dry_hair_oil.jpg',
                  width: 300,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      );
    } else if (hairType == 'Oily and Dandruff' ||
        hairType == 'Dry and Dandruff') {
      return Column(
        children: [
          const Text("Anti-Dandruff Shampoo"),
          Image.asset('assets/dandruff_shampoo.jpg')
        ],
      );
    } else if (hairType == 'Dry and Color Fading' ||
        hairType == 'Oily and Color Fading') {
      return Column(
        children: [
          const Text("Anti Hair-Loss Shampoo"),
          Image.asset('assets/anti_hair_loss_shampoo.jpg')
        ],
      );
    } else {
      return Column(
        children: [
          const Text("You can use a hair mint to make your hair brighter!"),
          Image.asset('assets/mint.jpg'),
        ],
      );
    }
  }
}
