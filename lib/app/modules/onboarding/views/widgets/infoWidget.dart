import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koberorder/util/colour.dart';

Widget infoWidget() {
  return Container(
    height: 80,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.red[200],
      borderRadius: const BorderRadius.all(
        Radius.circular(
          14.0,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Kober Ciliwung",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              FaIcon(
                FontAwesomeIcons.mapLocationDot,
                size: 14,
                color: AppColour.APPBAR_HEADER_COL0R,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColour.APPBAR_HEADER_COL0R,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(right: 8, left: 8, top: 4, bottom: 4),
                  child: Text(
                    "2.5Km",
                    style: TextStyle(
                      fontSize: 6.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Text(
                "Dari Lokasimu",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
