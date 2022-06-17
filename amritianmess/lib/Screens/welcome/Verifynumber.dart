import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Screens/welcome/Verifyotp.dart';
import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class  Verifynumber extends StatefulWidget {
  const Verifynumber ({Key? key}) : super(key: key);

  @override
  State <Verifynumber> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Verifynumber> {
  TextEditingController   mobilenumber_controller = TextEditingController();
    

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        return Scaffold(
      appBar: AppBar(
        title: const Text("Number Verification"),
        backgroundColor: kprimarycolor,
      ),
      body: Container(
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
                initialCountryCode: 'NP', //default contry code, NP for Nepal
                onChanged: (phone) {
                  // ignore: avoid_print
                  print(phone.completeNumber);
                  //when phone number country code is changed
                  // print(phone.completeNumber); //get complete number
                  // print(phone.countryCode); // get country code only
                  // print(phone.number); // only phone number
                },
              ),
              RoundedBottom(
                text: "Register",
                textcolour: Colors.black,
                press: () {
                  var phone = mobilenumber_controller.value; //the phone number
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
    );
  }
}

