import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: kprimarycolor,
      ),
      body: Column(),
    );
  }
}
