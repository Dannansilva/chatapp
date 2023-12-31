import 'package:crashcourse/styles/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text('5min flutter'),
        centerTitle: false,
        actions: [
          Icon(Icons.location_off_outlined),
        ],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ), //stop lagging
    );
    return scaffold;
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/dannan.png',
          width: 100,
          height: 100,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          'Dannan Silva',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 2000; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
