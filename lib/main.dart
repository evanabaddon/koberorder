import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koberorder/util/colour.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColour.APPBAR_HEADER_COL0R),
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: AppColour.APPBAR_HEADER_COL0R),
        ),
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
