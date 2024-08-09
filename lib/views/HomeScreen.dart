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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_weight, color: Colors.green, size: 30),
            label: 'Weight',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.height, color: Colors.green, size: 30),
            label: 'Height',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment, color: Colors.green, size: 30),
            label: 'Result',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/weight');
              break;
            case 2:
              Navigator.pushNamed(context, '/height');
              break;
            case 3:
              Navigator.pushNamed(context, '/result');
              break;
          }
        },
      ),
    );
  }
}

    

