// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/modules/login/views/login_view.dart';
import 'package:koberorder/util/colour.dart';

Widget drawerHeader() {
  return Container(
    color: AppColour.APPBAR_HEADER_COL0R,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "HALLO",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () => Get.to(const LoginView()),
            child: const Text(
              "Masuk / Daftar",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
