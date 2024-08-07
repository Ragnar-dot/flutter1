import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 32, 224, 38)),
                  ),
                onPressed: () {
                  Navigator.pushNamed(context, '/weight');
                },
                child: const Text('Enter your Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

    

