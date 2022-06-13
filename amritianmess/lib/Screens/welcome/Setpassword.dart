import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Screens/welcome/Homepage.dart';
import 'package:amritamess/constants.dart';
import "package:flutter/material.dart";

class SetPassword extends StatelessWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Choose your password"),
          backgroundColor: kprimarycolor,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: size.width * 0.8,
          padding:
              EdgeInsets.only(left: size.width * 0.23, top: size.height * 0.03),
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
              obscureText: true,
              //maxLength: 64,
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
              //maxLength: 64,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Re-Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //contentPadding:
                //const EdgeInsets.symmetric(vertical: 15),
              ),
            ),
            RoundedBottom(
              text: "Save Password",
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
            )
          ]),
        ));
  }
}
