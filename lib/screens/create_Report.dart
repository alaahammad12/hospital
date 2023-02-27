import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:hospital/config/colors.dart';
import 'package:hospital/widged/uploadimage.dart';

class createReport extends StatelessWidget {
  const createReport({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: color.white,
        leading: IconButton(
          color: color.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text(
          "Creat Report",
          style: TextStyle(color: color.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Report Name", border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: height * .2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                    hintText: " Description", border: OutlineInputBorder()),
              ),
            ),
          ),
          Expanded(child: uploadImage()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color.green),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create Report",
                      style: TextStyle(color: color.white, fontSize: 17),
                    ))),
          )
        ],
      ),
    ));
  }
}
