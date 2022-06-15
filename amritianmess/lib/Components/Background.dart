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
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(255, 255, 255, 0.2), BlendMode.lighten),
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fill),
              //color: const Color.fromRGBO(255, 255, 255, 0.6),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
