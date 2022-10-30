import 'package:flutter/material.dart';
import 'package:koberorder/util/colour.dart';

Widget drawerHeader() {
  return const UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: AppColour.APPBAR_HEADER_COL0R),
    currentAccountPicture: ClipOval(
      child: Image(
          image: NetworkImage("https://i.ibb.co/PGv8ZzG/me.jpg"),
          fit: BoxFit.cover),
    ),
    accountName: Text('Evan Helga'),
    accountEmail: Text('test@gmail.com'),
  );
}