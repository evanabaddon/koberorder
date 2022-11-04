// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/data/models/produk.dart';
import 'package:koberorder/app/modules/home/views/widgets/productItem.dart';
import 'package:koberorder/app/modules/productdetail/views/productdetail_view.dart';
import 'package:koberorder/util/colour.dart';

Widget tabsContent(List<Produk> prod) {
  return Tab(
    child: Container(
      margin: const EdgeInsets.all(10),
      color: AppColour.COLOR_WHITE,
      child: Column(
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 16,
              ),
              itemCount: prod.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () =>
                      Get.to(const ProductdetailView(), arguments: prod[index]),
                  child: productItem(prod, context, index),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
