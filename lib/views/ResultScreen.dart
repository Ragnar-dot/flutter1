import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, double>? arguments = ModalRoute.of(context)?.settings.arguments as Map<String, double>?;
    final double weight = arguments?['weight'] ?? 0;
    final double height = arguments?['height'] ?? 0;
    final double bmi = calculateBMI(weight, height);
    final String category = getBMICategory(bmi);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your BMI is: ${bmi.toStringAsFixed(1)}', style: const TextStyle(fontSize: 24)),
            Text('You Are: $category', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:  WidgetStateProperty.all<Color>(const Color.fromARGB(255, 32, 244, 38)),
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Back to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }

  double calculateBMI(double weight, double height) {
    if (height == 0) return 0;
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }
}