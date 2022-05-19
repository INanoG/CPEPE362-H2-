import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/services/navigation_service.dart';
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

class NavigationBarTabletDesktopHome extends StatelessWidget {
  const NavigationBarTabletDesktopHome({Key? key}) : super(key: key);

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
            children: <Widget>[
              const NavBarItem('Dashboard', HomeRoute),
              const SizedBox(
                width: 20,
              ),
              const NavBarItem('Profile', ProfileRoute),
              const SizedBox(
                width: 20,
              ),
              const NavBarItem('Forum', ForumRoute),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton<MenuItem>(
                  onSelected: (item) => onSelected(context, item),
                  child: Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage("assets/user_home.png"),
                            fit: BoxFit.cover),
                      )),
                  itemBuilder: (context) =>
                      [...MenuItems.itemsFirst.map(buildItem).toList()]),
            ],
          )
        ],
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
        value: item,
        child: Row(
          children: [
            Icon(item.icon,
                color: const Color.fromARGB(255, 92, 71, 43), size: 20),
            const SizedBox(width: 12),
            Text(item.text),
          ],
        ),
      );

  void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemReadingList:
        break;
      case MenuItems.itemSignOut:
        context.read<AuthService>().signOut();
        locator<NavigationService>().navigateTo(WelcomeRoute);
        break;
      default:
    }
  }
}
