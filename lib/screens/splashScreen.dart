import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital/screens/Tasks.dart';
import 'package:hospital/screens/statrtUp.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => startUp())));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image(image: AssetImage('lib/config/Images/Rectangle 3.png')),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('lib/config/Images/Layer 1.png')),
                    SizedBox(height: height * .02),
                    Text(
                      "Hospital System",
                      style: TextStyle(color: Color(0xFF22C7B8), fontSize: 20),
                    ),
                    SizedBox(height: height * .2),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: LinearProgressIndicator(
                        color: Color.fromARGB(255, 34, 199, 184),
                      ),
                    ),
                    Text(
                      "Loading...",
                      style: TextStyle(
                          color: Color.fromARGB(255, 34, 199, 184),
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Image(image: AssetImage('lib/config/Images/Rectangle 2.png')),
        ],
      ),
    );
    ;
  }
}
