import 'package:flutter/material.dart';

class GardientAppBar extends StatelessWidget
{
  final double height;
  final String text;

  const GardientAppBar({Key? key,
  required this.text,
  required this.height,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(height),
        child: AppBar(
          flexibleSpace: Container(
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors:[
                Colors.deepPurple,
                Colors.indigo,
                ] ),
            ),
          ),
          title:   Text(text,
          style: const TextStyle(color: Colors.white),
          )
        ),
      ),
      
    );
  }

}