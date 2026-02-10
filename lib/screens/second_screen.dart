import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_count_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Obx(() => Text(
          'Counter Value: ${controller.counter}',
          style: const TextStyle(fontSize: 28),
        )),
      ),
    );
  }
}
