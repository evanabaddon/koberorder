import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:get/get.dart';
import 'package:koberorder/app/data/models/kategori.dart';
import 'package:koberorder/app/data/models/produk.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var kategoriList = List<Kategori>.empty().obs;
  var productList = List<Produk>.empty().obs;
  var isLoading = false.obs;
  final catId = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getKategori();
    getProduct();
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? newtoken = prefs.getString('token');
    print(newtoken);
  }

  getKategori() async {
    isLoading.value = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? newtoken = prefs.getString('token');
    var response = await http.get(
      Uri.parse("https://kobermie.com/api/kategori?orderby=id,asc"),
      headers: {
        "Authorization": "Bearer $newtoken",
      },
    );
    if (response.statusCode == 200) {
      Map obj = jsonDecode(response.body);
      var data = obj['data'];
      for (var element in data) {
        kategoriList.add(Kategori.fromJson(element));
      }
      isLoading.value = false;
      update();
    } else {
      return kategoriList;
    }
  }

  getProduct() async {
    isLoading.value = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? newtoken = prefs.getString('token');

    var response = await http.get(
      Uri.parse("https://kobermie.com/api/produk_all?orderby=name,asc"),
      headers: {
        "Authorization": "Bearer $newtoken",
      },
    );

    if (response.statusCode == 200) {
      Map obj = jsonDecode(response.body);
      var data = obj['data'];

      for (var element in data) {
        productList.add(Produk.fromJson(element));
      }
      isLoading.value = false;
      update();
    } else {
      return productList;
    }
  }
}
