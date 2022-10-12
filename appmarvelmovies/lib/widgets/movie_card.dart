import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const MovieCard({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 3,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/preload_marvel.gif'),
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 200),
        ),
        Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(
              name,
              style: const TextStyle(
                  color: Color.fromARGB(255, 124, 3, 3),
                  fontWeight: FontWeight.bold),
            )),
      ]),
    );
  }
}
