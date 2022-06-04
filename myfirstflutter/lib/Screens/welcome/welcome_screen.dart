import 'package:flutter/material.dart';
import 'package:myfirstflutter/Screens/welcome/Components/body.dart';

class welcome_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
    /*   return MaterialApp(
      title: 'Amrita Vishwa Vidyapeetham',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );*/
  }
}
