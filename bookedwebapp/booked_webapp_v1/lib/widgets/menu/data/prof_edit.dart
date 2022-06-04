import 'package:booked_webapp_v1/widgets/menu/model/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileItems {
  static const List<Profile_Item> itemsFirst = [
    itemBio,
    itemPhoto,
  ];

  static const itemPhoto =
      Profile_Item(text: 'Change Profile Photo', icon: Icons.person);

  static const itemBio =
      Profile_Item(text: 'Edit Bio', icon: Icons.text_fields);
}
