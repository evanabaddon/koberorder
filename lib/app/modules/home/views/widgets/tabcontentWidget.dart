import 'package:flutter/material.dart';
import 'package:koberorder/util/colour.dart';

Widget tabsContent(String caption, [String description = '']) {
  return Container(
    margin: const EdgeInsets.all(10),
    color: AppColour.COLOR_WHITE,
    child: Column(
      children: <Widget>[
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
            ),
            itemCount: 40,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://i.ibb.co/JpdK5ch/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        ),
                      ),
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    "Mie Pedas Manis",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: AppColour.APPBAR_HEADER_COL0R),
                  ),
                  const Text(
                    "Rp.9000",
                    style: TextStyle(
                        fontSize: 16.0, color: AppColour.APPBAR_HEADER_COL0R),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    ),
  );
}
