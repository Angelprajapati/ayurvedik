import 'dart:async';
import 'package:ayurvedic/src/views/welcome_screen/welcomescreen.dart';
import 'package:flutter/material.dart';

class splaceScreen extends StatefulWidget {
  const splaceScreen({Key? key}) : super(key: key);

  @override
  State<splaceScreen> createState() => _splaceScreenState();
}

class _splaceScreenState extends State<splaceScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => const welcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/imges/splacescreen.png"),
      ),
    );
  }
}
