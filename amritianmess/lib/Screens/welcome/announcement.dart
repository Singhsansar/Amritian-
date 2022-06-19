import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  State<Announcement> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Announcements"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
