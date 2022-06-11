//use at the time it required 
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class Countrycode extends StatelessWidget
{
   const Countrycode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.transparent,
      //child:Countrycode()
      body: Container(
           padding: const EdgeInsets.all(10),
           child: Column(children: <Widget>[
                IntlPhoneField(
                   decoration: const InputDecoration( //decoration for Input Field
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                          ),
                      ),
                      initialCountryCode: 'NP', //default contry code, NP for Nepal
                      onChanged: (phone) {
                          //when phone number country code is changed
                          print(phone.completeNumber); //get complete number
                          print(phone.countryCode); // get country code only
                          print(phone.number); // only phone number
                      },

                ),
        
           ]
      )
      )
    );
  }

}