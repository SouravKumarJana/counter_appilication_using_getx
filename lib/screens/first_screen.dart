import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
import '../constants/app_sttrings.dart';
import '../routes/app_routes.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  final CounterController controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.firstScreenTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Obx(() => Text(
              '${AppStrings.counterText} ${controller.counter}',
              style: const TextStyle(fontSize: 28),
            )),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: controller.increment,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: controller.decrement,
                  child: const Icon(Icons.remove),
                ),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.secondScreen);
              },
              child: const Text(AppStrings.navigateScreenTitle),
            ),
          ],
        ),
      ),
    );
  }
}
