import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
import '../constants/app_sttrings.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final CounterController controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.secondScreenTitle),
      ),
      body: Center(
        child: Obx(() => Text(
          '${AppStrings.counterValueText} ${controller.counter}',
          style: const TextStyle(fontSize: 28),
        )),
      ),
    );
  }
}
