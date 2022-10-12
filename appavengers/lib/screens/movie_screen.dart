import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Movies Marvel 2022',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 136, 5, 11),
              fontSize: 25),
        ),
      ),
    );
  }
}
