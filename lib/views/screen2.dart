  
  import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yout Weight'), // Use Text widget here
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             TextField(
              controller: _weightController,
              decoration: const InputDecoration(
                labelText:'Weight (kg)',
                      ),
              keyboardType: TextInputType.number,
            ),
     ],
        ),
      ),
    );
  }

}