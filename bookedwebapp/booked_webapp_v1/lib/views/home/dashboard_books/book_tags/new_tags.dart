import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/services/navigation_service.dart';
import 'package:booked_webapp_v1/views/home/dashboard_books/book_tags/bookTags.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:booked_webapp_v1/widgets/menu/data/menu_items.dart';
import 'package:booked_webapp_v1/widgets/menu/model/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navbar_item.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navbar_logo.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navigation_bar.dart';
import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class booktagsWhich extends StatelessWidget {
  const booktagsWhich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              bookTagItems('Dashboard'),
              SizedBox(
                width: 5,
              ),
              bookTagItems('Profile'),
              SizedBox(
                width: 5,
              ),
              bookTagItems('Forum'),
              SizedBox(
                width: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
