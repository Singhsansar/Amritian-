import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Hostel extends StatefulWidget {
  const Hostel({Key? key}) : super(key: key);

  @override
  State<Hostel> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Hostel> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hostels"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
