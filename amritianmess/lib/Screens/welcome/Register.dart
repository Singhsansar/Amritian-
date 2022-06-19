import 'package:amritamess/Components/Background.dart';
import 'package:amritamess/Components/Dropdownbranch.dart';
import 'package:amritamess/Components/Dropdownhostel.dart';
import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/Login.dart';
import 'package:amritamess/Screens/welcome/Verifynumber.dart';
import 'package:amritamess/constants.dart';
import "package:flutter/material.dart";

// ignore: camel_case_types
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Register> {
  TextEditingController firstname_controller = TextEditingController();
  TextEditingController lastname_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  //TextEditingController Branch_controller = TextEditingController();
  //TextEditingController  Hostel_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        image: "assets/icons/AmritaVishwa.jpg",
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kprimarycolor,
            title: const Text("Register"),
          ),

          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              SingleChildScrollView(
                //for scrolling pages
                child: Container(
                  width: size.width * 0.7,
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.2,
                      horizontal: size.width * 0.15),
                  child: Column(
                    children: [
                      TextField(
                        controller: firstname_controller,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          //hintText: "First Name",
                          labelText: 'First Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: lastname_controller,
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          //hintText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: email_controller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.email, color: kprimarycolor),
                          //prefixIconColor: kprimaryLightcolor,
                          labelText: 'Email id',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          //hintText: "Email id",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Dropdownbranch(),
                      const SizedBox(
                        height: 15,
                      ),
                      const Dropdownhostel(),
                      const SizedBox(
                        height: 15,
                      ),
                      RoundedBottom(
                        text: "Register",
                        textcolour: Colors.black,
                        press: () {
                          var fname = firstname_controller.text;
                          var lname = lastname_controller.text;
                          var email = email_controller.text;
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
        ));
  }
}
