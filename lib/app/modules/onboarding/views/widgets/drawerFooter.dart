import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koberorder/util/colour.dart';

import 'sosmedWidget.dart';

Widget drawerFooter() {
  return Column(
    children: [
      Row(
        children: [
          sosmedWidget(icon: FontAwesomeIcons.instagram, onTap: () {}),
          sosmedWidget(icon: FontAwesomeIcons.facebook, onTap: () {}),
          sosmedWidget(icon: FontAwesomeIcons.twitter, onTap: () {}),
          sosmedWidget(icon: FontAwesomeIcons.tiktok, onTap: () {}),
        ],
      ),
      Container(
        color: AppColour.COLOR_GRAY.withOpacity(0.2),
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Customer Care : ",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              ElevatedButton.icon(
                icon: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.white,
                ),
                label: const Text(
                  "08123456798",
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // <-- Radius
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
