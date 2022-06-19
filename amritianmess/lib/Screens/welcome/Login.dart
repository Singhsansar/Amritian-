import 'package:amritamess/Components/Background.dart';
import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/Homepage.dart';
import 'package:amritamess/Screens/welcome/Register.dart';
import 'package:amritamess/Screens/welcome/Verifynumber.dart';
import 'package:amritamess/constants.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Login> {
  TextEditingController email_controller = TextEditingController();
  TextEditingController Password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //create a form over here  for the sign up
    return Background(
        image: "assets/images/AmritaVishwa.jpg",
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
                    "assets/images/Circularlogo.png",
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
                          controller: email_controller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.email_sharp,
                              color: kprimarycolor,
                            ),
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
                          controller: Password_controller,
                          obscureText: true,
                          //keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                            prefixIcon:
                                const Icon(Icons.lock, color: kprimarycolor),
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
                            var email = email_controller.text;
                            var Password = Password_controller.text;
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
                                    return const Register(); //call system file to perform actions
                                  },
                                ),
                              );
                            }, //action after clicking Register
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
