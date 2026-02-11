import 'app_routes.dart';
import 'package:get/get.dart';
import '../screens/first_screen.dart';
import '../screens/second_screen.dart';
import '../bindings/couter_binding.dart';
class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.firstScreen,
      page: () => FirstScreen(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: AppRoutes.secondScreen,
      page: () => SecondScreen(),
    ),
  ];
}