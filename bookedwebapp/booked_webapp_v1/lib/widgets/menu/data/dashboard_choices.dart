import 'package:booked_webapp_v1/widgets/menu/model/dashboard/dashboard_new_item.dart';
import 'package:booked_webapp_v1/widgets/menu/model/profile_item.dart';
import 'package:flutter/material.dart';

class DashboardItems {
  static const List<DashboardMenu_Item> itemsFirst = [
    reading,
    to_read,
    completed,
  ];

  static const reading =
      DashboardMenu_Item(text: 'Reading', icon: Icons.bookmark_outlined);

  static const to_read =
      DashboardMenu_Item(text: 'To Read', icon: Icons.bookmark_add);

  static const completed =
      DashboardMenu_Item(text: 'Finished', icon: Icons.bookmark_added);
}
