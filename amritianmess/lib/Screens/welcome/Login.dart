import 'package:amritamess/Components/Background.dart';
import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/Homepage.dart';
import 'package:amritamess/Screens/welcome/Login.dart';
import 'package:amritamess/Screens/welcome/Signup.dart';
import 'package:amritamess/Screens/welcome/Verifynumber.dart';
import 'package:amritamess/constants.dart';
import "package:flutter/material.dart";
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  //const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //create a form over here  for the sign up
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
              //backgroundColor: const Color.fromARGB(98, 74, 9, 9),
              title: const Text("Login"),
              backgroundColor: kprimarycolor,
            ),
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: size.width * 0.15, top: size.height * 0.04),
                  child: Image.asset(
                    "assets/icons/Circularlogo.png",
                    width: size.width * 0.7,
                    height: size.height * 0.3,
                  ),
                ),
                SingleChildScrollView(
                  //for scrolling pages
                  child: Container(
                    width: size.width * 0.8,
                    margin: const EdgeInsets.symmetric(
                        vertical: 300, horizontal: 50),
                    //padding: EdgeInsets.only(left: size.height * 0.01),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            //contentPadding:
                            //const EdgeInsets.symmetric(vertical: 15)
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          //maxLength: 10,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            //contentPadding:
                            //const EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                        RoundedBottom(
                          text: "Login",
                          textcolour: Colors.black,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Homepage();
                                },
                              ),
                            );
                          },
                        ),
                        TextBottom(
                          text: "Forgotten Password? Click here",
                          fontsiz: 16,
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
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Register();
                                  },
                                ),
                              );
                            }, //action after clicking login
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            )));

    //Stack and column will be same
  }
}
