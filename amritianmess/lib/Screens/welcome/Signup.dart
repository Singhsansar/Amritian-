import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/Login.dart';
import 'package:amritamess/Screens/welcome/Verifynumber.dart';
import "package:flutter/material.dart";


// ignore: camel_case_types
class Signup extends StatelessWidget
{
  const Signup({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) 
  {
    Size size = MediaQuery.of(context).size;
    //create a form over here  for the sign up 
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image:AssetImage(
            "assets/icons/Amrita.jpg",
            
          ),
          fit: BoxFit.cover,
          ),
        ),
        child:  Scaffold(
          appBar: AppBar(
            //backgroundColor: const Color.fromARGB(98, 74, 9, 9),
            title: const Text("Register"),
          ),
          
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
                Container(
                  padding: EdgeInsets.only(left:size.width*0.2,top: size.height*0.1),
                    child: const Text("Welcome to Amrita",
                    style:TextStyle(
                    fontSize: 33,
                    color: Color.fromARGB(255, 83, 23, 23),
                    fontWeight:FontWeight.bold,
    
                  ),
                  ),
              ),
              
                 SingleChildScrollView( //for scrolling pages 
                   child: Center(
                  child: Container(
                 margin: const EdgeInsets.symmetric(vertical: 100),
                  //width: size.width * 0.9,
                     padding: EdgeInsets.all(size.height*0.1),
                      child: Column(
                        children:  [
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "First Name",
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),),
                              
                            ),
                 
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          TextField(
                            //obscureText: true,
                            //maxLength: 10,
                                decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Last Name",
                                border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),),
                          ),
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          TextField(
                                decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email id",
                                border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),),
                          ),
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          // const Countrycode(
                          //    key: ,

                          // ),
                          const SizedBox(
                            height:3,
                          ),
                          TextField(
                            //obscureText: true,
                            //maxLength: 10,
                                decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Branch",
                                border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),),
                          ),
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          TextField(
                            //obscureText: true,
                            //maxLength: 10,
                                decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Hostel Name",
                                border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),),
                          ),
                          ),
                          
                        RoundedBottom(
                        text: "Register",
                        textcolour: Colors.black,
                         press: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                              builder: (context){
                              return const Verifynumber();
                  
                        },),);
                 },),
                 TextBottom(
                    text: "-- already have account? Login here --", 
                    fontsiz: 15,
                     press: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                              builder: (context){
                              return const Login();
                    
                                   },),);
                                   },
                     
                     ),
                        ],               
                      ),
                       
                     ),
                   ),
                 ),
             
            ],
          ), //Stack and column will be same 
    
        ),
      );

  }
} 