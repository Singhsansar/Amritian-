import 'package:amritamess/Screens/welcome/Register.dart';
import 'package:amritamess/Screens/welcome/Login.dart';
import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';
import 'Background.dart';
import 'RoundedBottom.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  //get onPressed => Signup();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      image: 'assets/icons/AmritaVishwa.jpg',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Positioned(
            top: size.height * 0.5,
            left: 100,
            child: Image.asset(
              "assets/icons/Amritalogo.png",
              width: 300, //upload a picture
              height: 300,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/mother.svg",
            width: 200,
            height: size.height * 0.34,
          ),
          const SizedBox(
            height: 50,
          ),
          RoundedBottom(
            text: "Login",
            textcolour: Colors.black,
            color: kprimaryLightcolor,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Login();
                  },
                ),
              );
            }, //action after clicking login
          ),
          RoundedBottom(
            text: "Sign up",
            textcolour: Colors.black,
            color: kprimarycolor,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Register();
                  },
                ),
              );
            }, //action after clicking login
          ),
        ],
      ),
    );
  }
}
