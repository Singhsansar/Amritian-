import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // this will rovide the size of the screen that is width and height
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          //Positioned(
          // child: Image.asset(
          //"assets\\icons\\Amritalogo.png",
          //width: size.width * 0.1, //upload a picture
          // )//)
        ],
      ),
    );
  }
}
