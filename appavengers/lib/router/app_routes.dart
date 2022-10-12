import 'package:appavengers/models/models.dart';
import 'package:appavengers/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'marvel';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'marvel',
        name: 'Marvel STUDIO',
        screen: const MarvelScreen(),
        icon: Icons.rocket),
    MenuOption(
        route: 'avengers',
        name: 'Marvel Avengers',
        screen: const AvengersScreen(),
        icon: Icons.shield_moon_sharp),
    MenuOption(
        route: 'defenders',
        name: 'Marvel Defenders',
        screen: const DefendersScreen(),
        icon: Icons.security_outlined),
    MenuOption(
        route: 'movie',
        name: 'Marvel Movie',
        screen: const MovieScreen(),
        icon: Icons.live_tv_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const MarvelScreen(),
    );
  }
}
