//For the Fulll Screen image Background
import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  final Widget child;
  const BackgroundGradient({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Color.fromARGB(255, 231, 226, 228),
                Color.fromARGB(255, 218, 141, 173),
                Color.fromARGB(255, 236, 231, 233),
                Color.fromARGB(255, 240, 238, 239),
              ],
            )),
          ),
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Image.asset(
          //     image,
          //     fit: BoxFit.scaleDown,
          //     color: const Color.fromRGBO(255, 255, 255, 0.6),
          //     colorBlendMode: BlendMode.modulate

          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
