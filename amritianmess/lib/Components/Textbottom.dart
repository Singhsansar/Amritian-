import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class TextBottom extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolour;
  final double fontsiz;
  const TextBottom({
    Key? key,
    required this.text,
    required this.press,
    required this.fontsiz,
    this.color = kprimarycolor,
    this.textcolour = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 0),
      child: Column(
        children: [
          TextButton(
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(
                color: textcolour,
                fontWeight: FontWeight.bold,
                fontSize: fontsiz,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
