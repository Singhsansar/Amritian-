import 'package:flutter/material.dart';
import 'package:myfirstflutter/home_page.dart';
void main()
{
  runApp(Myapp());

}
//type 'stl' for the stateless wigit
//class  "Myapp" extends StatelessWidget, my app is the name of our app
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  //build is where we build our Interface
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:HomePage(),
   
    );
  }
}



