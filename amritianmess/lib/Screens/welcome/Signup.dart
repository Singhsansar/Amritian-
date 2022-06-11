import 'package:amritamess/Components/Background.dart';
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
    return  Background(
      image: "assets/icons/AmritaVishwa.jpg",
         child: Column(
         children: [
          Container(
                  padding: EdgeInsets.only(left:size.width*0.1,top: size.height*0.1),
                  child: const Text("Welcome to Amrita",
                  style:TextStyle(
                  fontSize: 33,
                  color: Color.fromARGB(255, 32, 42, 227),
                  fontWeight:FontWeight.bold,
           ),),
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
                      ),],
         

         ),

    )
         )
         
   ] ));
  }
}