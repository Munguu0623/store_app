import 'package:flutter/cupertino.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/sector_page.dart';
import 'package:store_app/login/login.dart';

enum RouteName {
  LoginPage,
  SectorPage,
  HomePage;

  String get route {
    switch (this) {
      case RouteName.LoginPage:
        return "LoginPage";
      case RouteName.SectorPage:
        return "SectorPage";
      case RouteName.HomePage:
        return "HomePage";
    }
  }
}

var routes = <String, WidgetBuilder>{
  RouteName.LoginPage.route: (_) => LoginPage(),
  RouteName.SectorPage.route: (_) => SectorPage(),
  RouteName.HomePage.route: (_) => HomePage(),
};
