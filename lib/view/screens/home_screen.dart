import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static final nameRoute = '/homeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Home' , style: TextStyle(fontSize: 20 ),),
        ),
      ),
    );
  }
}
