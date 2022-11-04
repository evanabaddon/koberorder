// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/modules/home/views/home_view.dart';
import 'package:koberorder/app/modules/storedetail/views/storedetail_view.dart';
import 'package:koberorder/util/colour.dart';

Widget storeWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Get.to(const StoredetailView()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1463797221720-6b07e6426c24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhZmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.mapLocationDot,
                                color: Colors.white,
                                size: 14,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "5.8Km",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "Info Outlet",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FaIcon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                                size: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      // Text("text"),
                      Text(
                        "Delivery, Pickup, Dinein",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Kober Ciliwung",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Buka : ",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        "10.00",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        " - ",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        "22.00",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Jl. Ciliwung No.48, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126",
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
              const Divider()
            ],
          ),
        ),
        InkWell(
          onTap: () => Get.to(const HomeView()),
          child: Container(
            height: 35,
            color: AppColour.APPBAR_HEADER_COL0R,
            child: const Center(
              child: Text(
                "Pilih Outlet",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    ),
  );
}
