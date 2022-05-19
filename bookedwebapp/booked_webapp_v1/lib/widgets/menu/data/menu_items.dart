import 'package:booked_webapp_v1/widgets/menu/model/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItems {
  static const List<MenuItem> itemsFirst = [
    itemReadingList,
    itemSignOut,
  ];

  static const itemReadingList =
      MenuItem(text: 'Reading List', icon: Icons.book);

  static const itemSignOut = MenuItem(text: 'Sign Out', icon: Icons.logout);
}
