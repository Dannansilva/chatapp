import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom navigation Container'),
      ),
      body: Center(
        child: Text('center Text'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),label: 'favorite'
          ),
        ],
      ),
    );
  }
}
