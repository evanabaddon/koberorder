import 'package:get/get.dart';

class CartController extends GetxController {
  final count = 1.obs;

  void increment() => count.value++;
  void decrement() => count.value--;
}
