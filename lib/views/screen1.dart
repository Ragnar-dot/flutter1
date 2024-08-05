import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your High'), // Use Text widget here
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
     ],
        ),
      ),
    );
  }






}
