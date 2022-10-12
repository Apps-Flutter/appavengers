import 'package:appmarvelmovies/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mavel MOVIES'),
          backgroundColor: const Color.fromARGB(255, 139, 4, 4),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            MovieCard(
              imageUrl: 'https://images8.alphacoders.com/101/1012707.jpg',
              name: 'Avengers Endgame',
            ),
            SizedBox(
              height: 10,
            ),
            MovieCard(
              imageUrl: 'https://wallpaperaccess.com/full/6615764.jpg',
              name: 'Doctor Strange in the Multiverse',
            ),
            SizedBox(
              height: 10,
            ),
            MovieCard(
              imageUrl: 'https://wallpaperaccess.com/full/2158674.jpg',
              name: 'Captain Marvel',
            ),
            SizedBox(
              height: 10,
            ),
            MovieCard(
              imageUrl: 'https://wallpaperaccess.com/full/410921.jpg',
              name: 'Captain America: Civil War',
            )
          ],
        ));
  }
}
