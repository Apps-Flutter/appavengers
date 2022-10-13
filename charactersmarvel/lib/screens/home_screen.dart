import 'package:charactersmarvel/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const Image(
              image: NetworkImage(
                  'https://lumiere-a.akamaihd.net/v1/images/pp_marvelsheroproject_logo_22309_645e33c8.png'),
              width: 300,
              fit: BoxFit.contain,
            ),
            TextButton(
                child: const Text(
                  'Pulsa aquí',
                  style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
                ),
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HeroMarvelScreen()))
                    })
          ])),
    );
  }
}
