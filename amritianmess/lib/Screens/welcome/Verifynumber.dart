import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Screens/welcome/Verifyotp.dart';
import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../Components/Background.dart';

class Verifynumber extends StatefulWidget {
  const Verifynumber({Key? key}) : super(key: key);

  @override
  State<Verifynumber> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Verifynumber> {
  TextEditingController mobilenumber_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        image: 'assets/icons/AmritaVishwa.jpg',
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Number Verification"),
            backgroundColor: kprimarycolor,
          ),
          body: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(60),
              child: Column(
                children: <Widget>[
                  IntlPhoneField(
                    controller: mobilenumber_controller,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true, //decoration for Input Field
                      labelText: 'Phone Number',
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode:
                        'NP', //default contry code, NP for Nepal
                    onChanged: (phone) {
                      // ignore: avoid_print
                      print(phone.completeNumber);
                    },
                  ),
                  const Text(
                    "We will send OTP to this number ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  RoundedBottom(
                    text: "Register",
                    textcolour: Colors.black,
                    press: () {
                      var phone =
                          mobilenumber_controller.value; //the phone number
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
              )),
        ));
  }
}
