import 'package:amritamess/Components/RoundedBottom.dart';
import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/Signup.dart';
import "package:flutter/material.dart";
//import 'package:flutter/painting.dart';


// ignore: camel_case_types
class Login extends StatelessWidget
{
  const Login({Key? key}) : super(key: key);

  //const Signup({Key? key}) : super(key: key);
  
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
            backgroundColor: const Color.fromARGB(98, 74, 9, 9),
            title: const Text("Log in"),
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
                Container(
                  padding: EdgeInsets.only(left:size.width*0.2,top: size.height*0.1),
                    child: const Text("Welcome to Amrita",
                    style:TextStyle(
                    fontSize: 33,
                    color: Color.fromARGB(255, 32, 42, 227),
                    fontWeight:FontWeight.bold,
    
                  ),
                  ),
              ),
              
                 SingleChildScrollView( //for scrolling pages 
                   child: Container(
                    //margin: const EdgeInsets.symmetric(vertical: 8),
                    width: size.width * 0.9,
                    padding: EdgeInsets.only(top:size.height*0.4,left:size.width*0.2 ),
                    child: Column(
                      children:  [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Email",
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),),
                            
                          ),
                 
                        ),
                        const SizedBox(
                          height:10,
                        ),
                        TextField(
                          obscureText: true,
                          maxLength: 10,
                              decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Password",
                              border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),),
                        ),
                        ),
                      RoundedBottom(
                      text: "Login",
                      textcolour: Colors.black,
                       press: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                            builder: (context){
                            return const Signup();
                  
                      },),);
                 },),
                 TextBottom(
                  text: "Forgotten Password? Click here", 
                  fontsiz: 15,
                   press: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                            builder: (context){
                            return const Signup();
                  
                 },),);
                 },
                   
                   ),
                  TextBottom(
                  text: "Register", 
                  fontsiz: 15,
                  textcolour: Color.fromARGB(255, 5, 108, 193),
                  press: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                            builder: (context){
                            return const Signup();
                  
                      },),);
                 },
                   ),
                      ],               
                    ),
                     
                   ),
                 ),
             
            ],
          ), //Stack and column will be same 
    
        ),
      );

  }
}