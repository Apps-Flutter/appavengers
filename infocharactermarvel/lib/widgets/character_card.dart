import 'package:flutter/material.dart';

class CharactetInfo extends StatelessWidget {
  final String imageUrl;
  final String character;
  final String nameChar;
  final String descriptionChar;
  final String phtoChar;

  const CharactetInfo({
    Key? key,
    required this.imageUrl,
    required this.character,
    required this.nameChar,
    required this.descriptionChar,
    required this.phtoChar,
  }) : super(key: key);

  void displayDialog(BuildContext context) {
    //print('Soy una alerta');
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: Text(character),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(descriptionChar),
                const SizedBox(
                  height: 10,
                ),
                Image(
                  image: NetworkImage(phtoChar),
                  height: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            leading: Image(
              image: NetworkImage(imageUrl),
              alignment: Alignment.center,
              height: 65,
            ),
            title: Text(character),
            subtitle: Text(nameChar),
            trailing: const Icon(Icons.more_vert_outlined),
            onTap: () => displayDialog(context),
          )
        ],
      ),
    );
  }
}
