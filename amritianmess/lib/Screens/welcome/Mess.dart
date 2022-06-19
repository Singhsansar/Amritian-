import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Mess> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messs"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
