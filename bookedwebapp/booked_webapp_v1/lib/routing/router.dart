import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/views/about/about_view.dart';
import 'package:booked_webapp_v1/views/forum/forum_view.dart';
import 'package:booked_webapp_v1/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case ForumRoute:
      return _getPageRoute(ForumView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  late final Widget child;
  _FadeRoute({required this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
