import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  State<Note> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
