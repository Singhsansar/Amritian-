//import 'package:amritamess/Components/Textbottom.dart';
//import 'package:amritamess/Screens/welcome/Login.dart';
import 'package:amritamess/Components/Drawer.dart';
import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //var account_circle;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        backgroundColor: kprimarycolor,
      ),
      body: const Draw(),
    );
  }
}
