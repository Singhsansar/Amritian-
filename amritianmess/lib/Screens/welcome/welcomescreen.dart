import 'package:amritamess/Components/Body.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class welcomescreen extends StatelessWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
