// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:koberorder/util/colour.dart';
import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'app/routes/app_pages.dart';
import 'util/value.dart';

void main() async {
  String initialRoute;
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  var response = await http.post(
    Uri.parse(AppValue.BASE_URL + AppValue.TOKEN_URI),
    body: {'secret': AppValue.SECRET},
  );
  if (response.statusCode == 200) {
    Map obj = jsonDecode(response.body);
    String token = obj['data']['access_token'];

    prefs.setString('token', token);
  } else {
    print(response.statusCode);
  }

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColour.APPBAR_HEADER_COL0R),
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: AppColour.APPBAR_HEADER_COL0R),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColour.COLOR_WHITE,
            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
        ),
      ),
      title: "Kober App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
