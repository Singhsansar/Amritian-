//For the Fulll Screen image Background
import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  final String image;
  final Widget child;
  const Background({
    Key? key,
    required this.image,
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
            top: 0,
            left: 0,
            child: Image.asset(
              image,
              fit: BoxFit.scaleDown,
              color: const Color.fromRGBO(255, 255, 255, 0.6),
              colorBlendMode: BlendMode.modulate
            
            ),
          ),
          child,
        ],
      ),
    );
  }
}
