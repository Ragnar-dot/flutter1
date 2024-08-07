import 'package:flutter/material.dart';
import '../views/HomeScreen.dart';
import '../views/WeightScreen.dart';
import '../views/HeightScreen.dart';
import '../views/ResultScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: { 
        '/weight': (context) => WeightScreen(),
        '/height': (context) => HeightScreen(),
        '/result': (context) => ResultScreen(),
        //When the application navigates to the route named '/height', the HeightScreen widget will be displayed






      },
    );
  }
}




