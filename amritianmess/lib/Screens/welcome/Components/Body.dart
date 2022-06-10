import 'package:amritamess/Screens/welcome/Components/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    // this will rovide the size of the screen that is width and height
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 10,
            child: Image.asset(
              "assets/icons/Amritalogo.png",
              width: 380, //upload a picture
              height: 380,
            ),
          ),


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
          // const RoundedBottom(
          //   text:"Login", 
          //   press: myapp(){},//action after clicking login
            
          // ),
          // const RoundedBottom(
          //   text: text,
          //   press: press)
        ],
      ),
    );
  }
  
}

