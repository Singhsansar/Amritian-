import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -50,
            left: 10,
            child: Image.asset(
              "assets/icons/Amritalogo.png",
              width: 380, //upload a picture
              height: 380,
            ),
          ),
          child,
          /*  Positioned(
            top: 50,
            left: 50,
            child: Image.asset(
              "assets/icons/Red.jpg",
              width: 300,
              height: 300,
            ),
          ),*/
        ],
      ),
    );
  }
}
