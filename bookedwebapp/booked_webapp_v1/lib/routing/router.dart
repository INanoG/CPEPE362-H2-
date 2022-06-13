import 'package:booked_webapp_v1/views/home/home_view.dart';
import 'package:booked_webapp_v1/views/login/login_view.dart';
import 'package:booked_webapp_v1/views/logout/logout_view.dart';
import 'package:booked_webapp_v1/views/profile/profile_view.dart';
import 'package:booked_webapp_v1/views/reading_list/reading_list.dart';
import 'package:booked_webapp_v1/views/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/views/about/about_view.dart';
import 'package:booked_webapp_v1/views/forum/forum_view.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    /////////////ForumRoutes

    /////////////MainRoutes
    case WelcomeRoute:
      return _getPageRoute(const WelcomeView());
    case AboutRoute:
      return _getPageRoute(const AboutView());
    case ForumRoute:
      return _getPageRoute(const ForumView());
    case LoginRoute:
      return _getPageRoute(LoginView());
    case RegisterRoute:
      return _getPageRoute(const RegisterView());
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case LogoutRoute:
      return _getPageRoute(const LogoutView());
    case ProfileRoute:
      return _getPageRoute(const ProfileView());
    case ReadingListRoute:
      return _getPageRoute(const ReadingListView());
    default:
      return _getPageRoute(const WelcomeView());
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
