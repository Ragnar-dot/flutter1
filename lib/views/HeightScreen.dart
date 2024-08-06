import 'package:flutter/material.dart';

class HeightScreen extends StatefulWidget {
  @override
  _HeightScreenState createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double weight = ModalRoute.of(context)!.settings.arguments as double;

    return Scaffold(
      appBar: AppBar(
        title:const Text('Enter Height'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _heightController,
              decoration: InputDecoration(labelText: 'Height (cm)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: {
                    'weight': weight,
                    'height': double.tryParse(_heightController.text) ?? 0,
                  },
                );
              },
              child: Text('Save Height and Show Result'),
            ),
          ],
        ),
      ),
    );
  }
}
