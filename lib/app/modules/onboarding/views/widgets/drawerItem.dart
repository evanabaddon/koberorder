import 'package:flutter/material.dart';
import 'package:koberorder/util/colour.dart';

Widget drawerItem({GestureTapCallback? onTap, required String text}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 12.0, color: AppColour.APPBAR_HEADER_COL0R),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
