import 'package:appavengers/router/app_routes.dart';
import 'package:appavengers/screens/avengers_screen.dart';
import 'package:appavengers/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MarvelScreen extends StatelessWidget {
  const MarvelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MARVEL STUDIO'),
          backgroundColor: AppTheme.primary,
          elevation: 3,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(AppRoutes.menuOptions[index].name),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const AvengersScreen(),
                    // );
                    // Navigator.push(context, route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
