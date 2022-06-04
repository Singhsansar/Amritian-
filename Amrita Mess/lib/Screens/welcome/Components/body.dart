import 'package:amritamess/Screens/welcome/Components/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // this will rovide the size of the screen that is width and height
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Mātā Amritānandamayī Devī",
            style: TextStyle(
                //color: Color.fromARGB(9, 240, 7, 50), //color doesnot work with the textstyle
                //fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/mother.svg",
            height: size.height * 0.4,
          ),
          // ignore: deprecated_member_use
          Container(
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: TextButton(
                  //padding:const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  onPressed: onPressed,
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Color.fromARGB(255, 13, 28, 240)),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
