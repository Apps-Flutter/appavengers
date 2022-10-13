import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  final String imageUrl;
  final String nombrePersonaje;
  final String descripcionPersonaje;
  const HeroCard({
    Key? key,
    required this.imageUrl,
    required this.nombrePersonaje,
    required this.descripcionPersonaje,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Image(
            image: NetworkImage(imageUrl),
            height: 150,
          ),
          title: Text(nombrePersonaje),
          subtitle: Text(descripcionPersonaje),
        ),
      ]),
    );
  }
}
