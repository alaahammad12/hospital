import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/colors.dart';

Widget outlineButtom(
    {required String? typeRegister, required Widget pagename}) {
  return OutlinedButton(
      onPressed: () {
        Get.to(pagename);
      },
      child: Text(typeRegister!,
          style: TextStyle(color: color.green, fontSize: 14)));
}
