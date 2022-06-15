import 'package:amritamess/Components/Background.dart';
import 'package:amritamess/Components/Dropdown.dart';
import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/Login.dart';
import 'package:amritamess/Screens/welcome/Verifynumber.dart';
import 'package:amritamess/constants.dart';
import "package:flutter/material.dart";

// ignore: camel_case_types
class  Register extends StatefulWidget {
  const Register ({Key? key}) : super(key: key);

  @override
  State <Register> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      image: "assets/icons/AmritaVishwa.jpg",
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(
      //       "assets/icons/Amrita.jpg",
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kprimarycolor,
          title: const Text("Register"),
        ),

        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Container(
            //   padding: EdgeInsets.only(
            //       left: size.width * 0.2, top: size.height * 0.1),
            //   child: const Text(
            //     "Welcome to Amrita",
            //     style: TextStyle(
            //       fontSize: 33,
            //       color: Color.fromARGB(255, 83, 23, 23),
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            SingleChildScrollView(
              //for scrolling pages
              child: Container(
                width: size.width * 0.7,
                margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.2, horizontal: size.width * 0.15),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "First Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      //obscureText: true,
                      //maxLength: 10,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Last Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email id",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // const Countrycode(
                    //    key: ,

                    // ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      //obscureText: true,
                      //maxLength: 10,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Branch",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   const Dropdown(),
                  //  DropdownButtonHideUnderline(
                  //   child:DropdownButton<String>
                  //   (
                  //     value:currentvalue,
                  //     isDense: true,
                  //     onChanged: (String newvalue){
                  //       setstate(({
                  //         currentvalue = newvalue;
                  //         State.didchange(newvalue);
                  //       });
                  //       );
                  //     },
                  //     items: hostel.map((String value){
                  //       return DropdownMenuItem<String>(
                  //         value:value,
                  //         child: Text(value));
                  //     }
                  //      ).toList() )
                  //  ),
                    // TextField(
                    //   //obscureText: true,
                    //   //maxLength: 10,
                    //   decoration: InputDecoration(
                    //     fillColor: Colors.grey.shade100,
                    //     filled: true,
                    //     hintText: "Hostel Name",
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //   ),
                    // ),
                   RoundedBottom(
                      text: "Register",
                      textcolour: Colors.black,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Verifynumber();
                            },
                          ),
                        );
                      },
                    ),
                    TextBottom(
                      text: "Already have account? Login here",
                      fontsiz: 15,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Login();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ), //Stack and column will be same
      ),
    );
  } 
}