import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final name ="Nikhil";
  @override
  Widget build(BuildContext context) {
    return Scaffold(      //Scaffold is to create body designs, Head and body 
    appBar: AppBar(
      title:Text("Let's Hire"), // This will be the Head of the App ,  here We can print name of app or the page name 
    ),
        body:Center(
            child: Container(
              child:Text("Welcome $name Myapp "), //$ string manipulation, ${ } for more than 1 characters 
            ),
        ),
        drawer: Drawer(), // Draker Creates side buttoms , like a menu bottom in the app
    );
    
  }
}