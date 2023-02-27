import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hospital/screens/Tasks.dart';
import 'package:hospital/screens/create_Report.dart';

import '../config/colors.dart';
import '../widged/outlineButton.dart';

class startUp extends StatefulWidget {
  const startUp({super.key});

  @override
  State<startUp> createState() => _startUpState();
}

class _startUpState extends State<startUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                    Text(
                      "Prototype Map",
                      style: TextStyle(color: color.green, fontSize: 20),
                    ),
                    SizedBox(
                      height: height * .03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        outlineButtom(
                            pagename: createReport(), typeRegister: 'Doctor'),
                        outlineButtom(
                            pagename: tasks(), typeRegister: 'Receptionist'),
                        outlineButtom(
                            pagename: createReport(), typeRegister: 'Nurse')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        outlineButtom(
                            pagename: createReport(),
                            typeRegister: 'Analysis Employee'),
                        outlineButtom(
                            pagename: createReport(), typeRegister: 'Manger'),
                        outlineButtom(pagename: tasks(), typeRegister: 'HR')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Image(image: AssetImage('lib/config/Images/Rectangle 2.png')),
        ],
      ),
    );
  }
}
