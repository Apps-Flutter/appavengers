import 'package:appavengers/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvengersScreen extends StatelessWidget {
  final options = const [
    'Ironman',
    'Spiderman',
    'Doctor Strange',
    'Capitán América',
    'Thor',
    'Hulk'
  ];
  const AvengersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Marvel Avengers'),
          backgroundColor: AppTheme.primary,
        ),
        body: ListView(
          children: [
            ...options
                .map((vengadores) => ListTile(
                      title: Text(vengadores),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
          ],
        ));
  }
}
