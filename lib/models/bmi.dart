import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BMICalculatorScreen(),
    );
  }
}

class BMICalculatorScreen extends StatefulWidget {
  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  double? _bmi; // Nullable double

  void _calculateBMI() {
    final height = double.tryParse(_heightController.text);
    final weight = double.tryParse(_weightController.text);

    if (height != null && weight != null && height > 0) {
      setState(() {
        _bmi = weight / (height / 100 * height / 100);
      });
    } else {
      setState(() {
        _bmi = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'), // Use Text widget here
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _heightController,
              decoration: const InputDecoration(
                labelText:'Height (cm)',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _weightController,
              decoration: const InputDecoration(
                labelText:'Weight (kg)',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: const Text('Calculate BMI'),
            ),
            const SizedBox(height: 20),
            _bmi == null
                ? const Text(
                    'Enter valid values',
                    style: const TextStyle (fontSize: 24),
                  )
                : Text(
                    'Your BMI is ${_bmi!.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 24),
                  ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }
}
