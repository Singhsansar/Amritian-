import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class RoundedBottom extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolour;
  final double fontsiz;
  const RoundedBottom({
    Key? key,
    required this.text,
    required this.press,
    this.color = kprimarycolor,
    this.textcolour = Colors.white,
    this.fontsiz = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: kprimarycolor),
            //backgroundColor: kprimarycolor,

            onPressed: press,
            child: Text(
              text,
              style: TextStyle(
                color: textcolour,
                fontSize: fontsiz,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }
}
