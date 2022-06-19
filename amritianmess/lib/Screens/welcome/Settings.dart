import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
