import 'package:amritamess/Components/Background.dart';
import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Screens/welcome/Homepage.dart';
import 'package:amritamess/constants.dart';
import "package:flutter/material.dart";

class Setpassword extends StatefulWidget {
  const Setpassword({Key? key}) : super(key: key);

  @override
  State<Setpassword> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Setpassword> {
  TextEditingController password_controller = TextEditingController();
  TextEditingController repassword_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      image: 'assets/images/AmritaVishwa.jpg',
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Choose your password"),
            backgroundColor: kprimarycolor,
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.8,
            height: size.height * 0.5,
            padding: EdgeInsets.only(
                left: size.width * 0.2, top: size.height * 0.03),
            child: Column(children: [
              const Text(
                "Enter your Password ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                //obscureText:!_passwordVisible ,
                controller: password_controller,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: true,
                controller: repassword_controller,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Re-Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              RoundedBottom(
                text: "Save Password",
                textcolour: Colors.black,
                press: () {
                  var password = password_controller.text;
                  var repassword_controller = password_controller.text;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Homepage();
                      },
                    ),
                  );
                },
              )
            ]),
          )),
    );
  }
}
