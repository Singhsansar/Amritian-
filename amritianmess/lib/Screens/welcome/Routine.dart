import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Routine extends StatefulWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  State<Routine> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Routine> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routines"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
