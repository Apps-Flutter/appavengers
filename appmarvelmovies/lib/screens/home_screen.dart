import 'package:appmarvelmovies/screens/movies_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 139, 4, 4),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text(
                'MARVEL STUDIO',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              TextButton(
                child: const Text(
                  'Ver movies aquí',
                  style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
                ),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MovieScreen()))
                },
              )
            ])));
  }
}
