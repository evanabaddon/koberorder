// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/data/models/bannerinfo.dart';
import 'package:koberorder/app/data/models/kategori.dart';
import 'package:koberorder/app/data/models/produk.dart';
import 'package:koberorder/app/modules/home/views/widgets/productItem.dart';
import 'package:koberorder/app/modules/productdetail/views/productdetail_view.dart';
import 'package:koberorder/util/colour.dart';

Widget tabsContent(
    List<Produk> prod, Kategori kat, List<BannerInfo> bannerList) {
  CarouselController controller = CarouselController();
  return Tab(
    child: prod.isNotEmpty
        ? kat.id == 1
            ? Container(
                margin: const EdgeInsets.all(10),
                color: AppColour.COLOR_WHITE,
                child: Column(
                  children: <Widget>[
                    CarouselSlider(
                      items: bannerList
                          .map(
                            (e) => Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    e.image,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                        aspectRatio: 1.0,
                        autoPlay: true,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        height: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 200),
                        itemCount: prod.length,
                        shrinkWrap: false,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () => Get.to(const ProductdetailView(),
                                arguments: prod[index]),
                            child: productItem(prod, context, index),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                margin: const EdgeInsets.all(10),
                color: AppColour.COLOR_WHITE,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 200),
                        itemCount: prod.length,
                        shrinkWrap: false,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () => Get.to(const ProductdetailView(),
                                arguments: prod[index]),
                            child: productItem(prod, context, index),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
        : const Center(
            child: Text("Tidak Ada Data"),
          ),
  );
}
