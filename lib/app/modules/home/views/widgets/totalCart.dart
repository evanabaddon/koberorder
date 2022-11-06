import 'package:flutter/material.dart';
import 'package:koberorder/util/colour.dart';

class totalCart extends StatelessWidget {
  const totalCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
          decoration: BoxDecoration(
            color: AppColour.COLOR_WHITE,
            shape: BoxShape.circle,
            border: Border.all(
              width: 1.0,
              color: AppColour.APPBAR_HEADER_COL0R,
            ),
          ),
          width: 16,
          height: 16,
          child: const Center(
            child: Text(
              "10",
              style: TextStyle(
                fontSize: 8,
                color: AppColour.APPBAR_HEADER_COL0R,
              ),
            ),
          )),
    );
  }
}
