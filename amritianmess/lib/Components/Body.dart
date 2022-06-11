import 'package:amritamess/Screens/welcome/Signup.dart';
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
    //Size size = MediaQuery.of(context).size;
    // this will rovide the size of the screen that is width and height
    return Background(
      image: 'assets/icons/AmritaVishwa.jpg',
      child: SingleChildScrollView( //what is this 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              top: -100,
              left: 100,
              child: Image.asset(
                "assets/icons/Amritalogo.png",
                width: 300, //upload a picture
                height: 300,
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
              width: 300,
              height: 200,
            ),
        
              RoundedBottom(
               text:"Login",
               textcolour: Colors.black,
               color: kprimaryLightcolor,
               press: (){
                Navigator.push(
                  context, 
                MaterialPageRoute(
                  builder: (context){
                  return const Login();
                },),);
               },//action after clicking login
              
            ),
              RoundedBottom(
               text:"Sign up", 
               textcolour: Colors.black,
               color: kprimarycolor,
               press: (){
                Navigator.push(
                  context, 
                MaterialPageRoute(
                  builder: (context){
                  return  const Signup();
                },),);
               },//action after clicking login
              
            ),
          ],
        ),
      ),
    );
  }
  
}

