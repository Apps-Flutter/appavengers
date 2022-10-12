import 'package:appavengers/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DefendersScreen extends StatelessWidget {
  final options = const [
    'Daredevil',
    'Elektra',
    'Luke Cage',
    'Jessica Jones',
    'Iron Fist',
    'Bakuto'
  ];
  const DefendersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marvel Defenders'),
        backgroundColor: AppTheme.primary,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  final defenders = options[index];
                  print(defenders);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
