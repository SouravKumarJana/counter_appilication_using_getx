import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_count_controller.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Obx(() => Text(
              'Counter: ${controller.counter}',
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
                Get.to(() => SecondScreen());
              },
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
