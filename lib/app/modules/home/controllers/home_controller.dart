import 'dart:convert';

import 'package:get/get.dart';
import 'package:koberorder/app/data/models/categories.dart';
import 'package:koberorder/app/data/providers/categoriesProvider.dart';

class HomeController extends GetxController {
  var kategoriList = List<Categories>.empty().obs;
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    CategoriesProvider().getCategories().then((Response response) {
      final Map jsonResponse = response.body;
      jsonResponse.forEach((key, value) {
        Categories catModel = Categories.fromJson(value);
        kategoriList.add(catModel);
      });
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
