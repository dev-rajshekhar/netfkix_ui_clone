import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/screen/home_screen.dart';
import 'package:netflix_ui_cloe/screen/splash_screen.dart';
import 'package:netflix_ui_cloe/screen/user_screen.dart';

class AppRoutes {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute<dynamic>(builder: (_) => SplashScreen());
        break;
      case '/users':
        return MaterialPageRoute<dynamic>(builder: (_) => UserScreen());
        break;
      case '/home':
        return MaterialPageRoute<dynamic>(builder: (_) => HomeScreen());
        break;
      default:
        return null;
    }
  }
}
