import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<About> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("About us"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
