import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/app_strings.dart';
import '../controllers/counter_controller.dart';

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
          '${AppStrings.counterValueLabel}: ${controller.counter}',
          style: const TextStyle(fontSize: 28),
        )),
      ),
    );
  }
}
