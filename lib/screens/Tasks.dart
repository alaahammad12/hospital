import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class tasks extends StatelessWidget {
  tasks({super.key});
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Expanded(
                  child: Text(
                    "${today.day}-${today.month}-${today.year}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 81, 81, 81),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.date_range),
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      print('Yay');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
