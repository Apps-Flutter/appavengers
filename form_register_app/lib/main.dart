import 'package:flutter/material.dart';
import 'package:form_register_app/screen/screens.dart';
import 'package:form_register_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.lightTheme,
      home: const FormRegisterScreen(),
    );
  }
}
