import 'package:get/get.dart';
import '../bindings/counter_binding.dart';
import '../screens/first_screen.dart';
import '../screens/second_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.first,
      page: () => FirstScreen(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: AppRoutes.second,
      page: () => SecondScreen(),
    ),
  ];
}
