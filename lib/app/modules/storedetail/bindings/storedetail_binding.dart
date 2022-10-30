import 'package:get/get.dart';

import '../controllers/storedetail_controller.dart';

class StoredetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoredetailController>(
      () => StoredetailController(),
    );
  }
}
