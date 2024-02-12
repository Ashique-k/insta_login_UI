import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/screens/instalogin.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  @override
void initstate(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(

        context,  MaterialPageRoute(builder: (context) => Login()),
      );
    }
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
