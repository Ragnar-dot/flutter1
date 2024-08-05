import 'package:flutter/material.dart';

class HeightInputWidget extends StatelessWidget {
  final TextEditingController controller;

  HeightInputWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Height (cm)',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
