import 'package:amritamess/Screens/welcome/Components/Background.dart';
import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this will rovide the size of the screen that is width and height
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          /*const Align(
            alignment: Alignment.center,
            child: Text(
              "Mess Management System",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),*/

          SvgPicture.asset(
            "assets/icons/mother.svg",
            width: 100,
            height: 500,
          ),
          // ignore: deprecated_member_use
          const RoundedBottom(
            text:"Login", 
            press: myapp(){},//action after clicking login
            
          ),
        ],
      ),
    );
  }
  
}

class RoundedBottom extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolour;
  final double fontsiz;
  const RoundedBottom({
    Key? key, 
    required this.text, 
    required this.press, 
     this.color=kprimarycolor, 
     this.textcolour=Colors.white,
     this.fontsiz=20,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: ElevatedButton(
            onPressed: press,
            child:  Text(
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
