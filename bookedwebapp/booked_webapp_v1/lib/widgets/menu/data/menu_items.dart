import 'package:booked_webapp_v1/widgets/menu/model/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItems {
  static const List<Menu_Item> itemsFirst = [
    itemReadingList,
    itemSignOut,
  ];

  static const itemReadingList =
      Menu_Item(text: 'Reading List', icon: Icons.book);

  static const itemSignOut = Menu_Item(text: 'Sign Out', icon: Icons.logout);
}
