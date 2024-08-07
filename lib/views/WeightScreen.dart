import 'package:flutter/material.dart';

class WeightScreen extends StatefulWidget {
  @override
  _WeightScreenState createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Enter Weight'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _weightController,
              decoration:const InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
               style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB (255, 32, 224, 38)),
                  ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/height',
                  arguments: double.tryParse(_weightController.text) ?? 0,
                );
              },
              child:const Text('Save Weight and Go to Height'),
            ),
          ],
        ),
      ),
    );
  }
}
