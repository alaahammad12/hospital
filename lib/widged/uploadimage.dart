import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hospital/screens/Tasks.dart';

import 'outlineButton.dart';

class uploadImage extends StatelessWidget {
  const uploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: AssetImage('lib/config/Images/Rectangle 1716.png'),
          width: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('lib/config/Images/MedicalUi-2-xd-xd.png'),
            ),
            outlineButtom(pagename: tasks(), typeRegister: '+  Uploed Image')
          ],
        )
      ],
    ));
  }
}
