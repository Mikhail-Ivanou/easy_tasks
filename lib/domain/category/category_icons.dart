import 'package:flutter/material.dart';

const Map<int, IconData> codeIconMap = {
  0xe5c3: Icons.apps,
  0xe8f9: Icons.work,
  0xe88a: Icons.home,
  0xe310: Icons.headset,
  0xe905: Icons.flight_takeoff,
  0xe02f: Icons.library_books,
  0xe8cc: Icons.shopping_cart,
  0xeb48: Icons.pool,
  0xe332: Icons.toys,
  0xe5d2: Icons.menu,
};

//we need such workaround as icons codes changes
Map<IconData, int> iconCodeMap = {
  Icons.apps: 0xe5c3,
  Icons.work: 0xe8f9,
  Icons.home: 0xe88a,
  Icons.headset: 0xe310,
  Icons.flight_takeoff: 0xe905,
  Icons.library_books: 0xe02f,
  Icons.shopping_cart: 0xe8cc,
  Icons.pool: 0xeb48,
  Icons.toys: 0xe332,
  Icons.menu: 0xe5d2,
};
