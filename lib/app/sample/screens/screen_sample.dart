import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/config/routers/app_routes.dart';
import 'package:sample/constants/controllers.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
        onTap: () => Get.toNamed(Routes.page2),
        child: Center(
          child: Obx(() =>
              Text('Button clicked ${sampleController.count.value} times')),
        ),
      )),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            heroTag: 'w',
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
            onPressed: () => sampleController.decrementCount(),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            heroTag: 's',
            child: const Icon(
              Icons.restore,
              color: Colors.white,
            ),
            onPressed: () => sampleController.resetCount(),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            heroTag: 'd',
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => sampleController.incrementCount(),
          ),
        ],
      ),
    );
  }
}
