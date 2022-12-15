import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/constants/controllers.dart';

class SampleScreenTwo extends StatelessWidget {
  const SampleScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Obx(() => Text(
            'Yup. You have pressed the counter ${sampleController.count.value} times')),
      )),
    );
  }
}
