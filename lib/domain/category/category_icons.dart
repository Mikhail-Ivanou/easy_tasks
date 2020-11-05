import 'package:flutter/material.dart';

const Map<int, IconData> codeIconMap = {
  0xe8f9: Icons.work,
  0xe88a: Icons.home,
  0xe310: Icons.headset,
  0xe905: Icons.flight_takeoff,
  0xe02f: Icons.library_books,
  0xe8cc: Icons.shopping_cart,
  0xeb48: Icons.pool,
  0xe332: Icons.toys,
  0xe68b: Icons.create,
  0xe643: Icons.category,
  0xe707: Icons.event,
  0xe7da: Icons.info_outline,
  0xe857: Icons.map,
  0xe559: Icons.access_alarm,
  0xe00d: Icons.account_balance_outlined,
  0xeaf3: Icons.wine_bar,
};

//we need such workaround as icons codes changes
Map<IconData, int> iconCodeMap = {
  Icons.work: 0xe8f9,
  Icons.home: 0xe88a,
  Icons.headset: 0xe310,
  Icons.flight_takeoff: 0xe905,
  Icons.library_books: 0xe02f,
  Icons.shopping_cart: 0xe8cc,
  Icons.pool: 0xeb48,
  Icons.toys: 0xe332,
  Icons.create: 0xe68b,
  Icons.category: 0xe643,
  Icons.event: 0xe707,
  Icons.info_outline: 0xe7da,
  Icons.map: 0xe857,
  Icons.access_alarm: 0xe559,
  Icons.account_balance_outlined: 0xe00d,
  Icons.wine_bar: 0xeaf3,
};
