import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';
import 'Screens/welcome/welcome_screen.dart';
//import 'package:myfirstflutter/constants.dart';

void main() => runApp(Amrita());

//type 'stl' for the stateless wigit
//class  "Myapp" extends StatelessWidget, my app is the name of our app
class Amrita extends StatelessWidget {
  const Amrita({Key? key}) : super(key: key);

  @override
  //build is where we build our Interface
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debugging mode
      title: 'Amrita Mess Management',
      theme: ThemeData(
        primaryColor: kprimarycolor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: welcome_screen(),
    );
  }
}
