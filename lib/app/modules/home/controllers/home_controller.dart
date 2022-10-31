import 'dart:convert';
import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:get/get.dart';
import 'package:koberorder/app/data/models/categories.dart';
import 'package:koberorder/app/data/providers/categoriesProvider.dart';

class HomeController extends GetxController {
  var kategoriList = List<Categories>.empty().obs;
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getKategori();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getKategori() async {
    isLoading.value = true;
    var response = await http.get(
      Uri.parse("https://kober.digitaloka.id/admin/api/v1/categories"),
      headers: {
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200) {
      var cat = jsonDecode(response.body);
      for (var element in cat) {
        kategoriList.add(Categories.fromJson(element));
      }
      isLoading.value = false;
    } else {
      return kategoriList;
    }
  }
}
