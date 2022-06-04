import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  //const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        //titleSpacing: 00.0,
        centerTitle: true,
        backgroundColor: Colors.redAccent[200],
      ),
      //enter an image to the App
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets\\icons\\Amritalogo.png',
              height: 50,
              scale: 1,
            ),
          ],
        ),
      ),
    );
  }
}
