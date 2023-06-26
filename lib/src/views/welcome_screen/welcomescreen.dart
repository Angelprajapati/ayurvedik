import 'dart:async';

import 'package:ayurvedic/src/views/on_boarding/onbordingScreen1.dart';
import 'package:flutter/material.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) =>  OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Image.asset(
            "assets/imges/welcomeScreen.png",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120,),
              Center(child: Image.asset("assets/imges/logoWhite.png",height: 133,)),
              const SizedBox(height: 100,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Welcome \nTo The \nNature's World",
                  style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Cabin'),
                ),
              ),
              const SizedBox(
                  width: 290,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Ayurvedic medicine is one of the world's oldest medical systems and remains one of India's traditional health care systems.",
                      style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: 'Cabin'),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
