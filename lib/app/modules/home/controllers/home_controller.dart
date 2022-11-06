import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:get/get.dart';
import 'package:koberorder/app/data/models/bannerinfo.dart';
import 'package:koberorder/app/data/models/kategori.dart';
import 'package:koberorder/app/data/models/produk.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController with StateMixin {
  var kategoriList = List<Kategori>.empty().obs;
  var productList = List<Produk>.empty().obs;
  var bannerList = List<BannerInfo>.empty().obs;
  var isLoading = false.obs;
  final catId = 0.obs;
  @override
  void onInit() {
    getKategori();
    getProduct();
    getBanner();
    super.onInit();
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? newtoken = prefs.getString('token');
    print(newtoken);
  }

  getBanner() async {
    isLoading.value = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? newtoken = prefs.getString('token');
    var response = await http.get(
      Uri.parse("https://kobermie.com/api/banner"),
      headers: {
        "Authorization": "Bearer $newtoken",
      },
    );
    if (response.statusCode == 200) {
      Map obj = jsonDecode(response.body);
      var data = obj['data'];
      for (var element in data) {
        bannerList.add(BannerInfo.fromJson(element));
      }
      update();
      isLoading.value = false;
    } else {
      return bannerList;
    }
  }

  getKategori() async {
    isLoading.value = true;
    change(null, status: RxStatus.loading());
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
      update();
      change(null, status: RxStatus.success());
      isLoading.value = false;
    } else {
      return kategoriList;
    }
  }

  getProduct() async {
    isLoading.value = true;
    change(null, status: RxStatus.loading());
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
      update();
      change(null, status: RxStatus.success());
      isLoading.value = false;
    } else {
      return productList;
    }
  }
}
