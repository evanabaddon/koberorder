import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koberorder/util/colour.dart';

Widget sosmedWidget({required Function() onTap, required IconData icon}) {
  return IconButton(
    onPressed: onTap,
    icon: FaIcon(
      icon,
      color: AppColour.APPBAR_HEADER_COL0R,
    ),
  );
}
