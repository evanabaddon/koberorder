// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:koberorder/app/data/models/produk.dart';
import 'package:koberorder/util/colour.dart';

Widget productItem(List<Produk> prod, BuildContext context, int index) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 325,
          height: 100,
          color: AppColour.BACKGROUND_COLOR,
          child: FadeInImage(
            height: 100,
            image: NetworkImage(prod[index].image == null
                ? "assets/images/placeholder.jpg"
                : prod[index].image!),
            placeholder: const AssetImage("assets/images/placeholder.jpg"),
            imageErrorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/images/placeholder.jpg',
                  fit: BoxFit.fitWidth);
            },
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      const SizedBox(
        height: 8.0,
      ),
      Text(
        prod[index].name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColour.APPBAR_HEADER_COL0R),
      ),
      Text(
        "Rp. ${prod[index].price}",
        style: const TextStyle(
            fontSize: 14.0, color: AppColour.APPBAR_HEADER_COL0R),
      ),
    ],
  );
}
