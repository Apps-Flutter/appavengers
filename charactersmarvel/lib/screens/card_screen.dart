import 'package:charactersmarvel/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HeroMarvelScreen extends StatelessWidget {
  const HeroMarvelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Personajes Marvel'),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          children: const [
            HeroCard(
              imageUrl:
                  'https://static.wikia.nocookie.net/vsdebating/images/b/ba/Captain_america_PNG50.png/revision/latest/scale-to-width-down/400?cb=20180123173800',
              nombrePersonaje: 'CAPTAIN AMERICA',
              descripcionPersonaje:
                  'America’s World War II Super-Soldier continues his fight in the present as an Avenger and untiring sentinel of liberty.',
            ),
            SizedBox(
              height: 15,
            ),
            HeroCard(
                imageUrl:
                    'https://static.wikia.nocookie.net/mua/images/0/01/Hero_iron-man.png/revision/latest?cb=20190614193838',
                nombrePersonaje: 'IRON MAN',
                descripcionPersonaje:
                    'Inventor Tony Stark applies his genius for high-tech solutions to problems as Iron Man, the armored Avenger.'),
            SizedBox(
              height: 15,
            ),
            HeroCard(
                imageUrl:
                    'https://i.pinimg.com/originals/2b/3d/d7/2b3dd7f4809b91bb0031f5700d0e9cd0.png',
                nombrePersonaje: 'BLACK PANTER',
                descripcionPersonaje:
                    'As the king of the African nation of Wakanda, T’Challa protects his people as the latest in a legacy line of Black Panther warriors.'),
            SizedBox(
              height: 15,
            ),
            HeroCard(
                imageUrl: 'https://m.media-amazon.com/images/I/71k+kkwQnJL.jpg',
                nombrePersonaje: 'THOR ODINSON',
                descripcionPersonaje:
                    'Thor Odinson wields the power of the ancient Asgardians to fight evil throughout the Nine Realms and beyond.')
          ],
        ));
  }
}
