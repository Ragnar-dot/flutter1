import 'package:flutter/material.dart';

class WeightInputWidget extends StatelessWidget {
  final TextEditingController controller;

  WeightInputWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Weight (kg)',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}

