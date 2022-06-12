import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Screens/welcome/Setpassword.dart';
import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Verifyotp extends StatelessWidget {
  const Verifyotp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP verification"),
        backgroundColor: kprimarycolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: size.width * 0.25, top: size.height * 0.03),
              //margin: const EdgeInsets.symmetric(vertical: 50),
              child: Image.asset(
                "assets/icons/Otpverify.png",
                width: size.width * 0.4,
                height: size.height * 0.3,
              ),
            ),
            Container(
              width: size.width * 0.8,
              padding: EdgeInsets.only(
                  left: size.width * 0.23, top: size.height * 0.03),
              margin: const EdgeInsets.symmetric(vertical: 0),
              child: Column(
                children: [
                  const Text(
                    "SMS has been sent to your number\nIf you don't get press Resend ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    maxLength: 6,
                    decoration: InputDecoration(
                      //enabledBorder: ,
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "######",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //contentPadding:
                      //const EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                  RoundedBottom(
                    text: "Verify",
                    textcolour: Colors.black,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SetPassword();
                          },
                        ),
                      );
                    },
                  ),
                  RoundedBottom(
                    text: "Resend OTP",
                    textcolour: Colors.black,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Verifyotp();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
