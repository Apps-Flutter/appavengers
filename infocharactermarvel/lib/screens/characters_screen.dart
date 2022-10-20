import 'package:flutter/material.dart';
import 'package:infocharactermarvel/widgets/widgets.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Info Characters'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            CharactetInfo(
              imageUrl:
                  'https://findicons.com/files/icons/1182/quickpix_2009/256/captain_america.png',
              character: 'CAPTAIN AMERICA',
              nameChar: 'Steve Rogers',
              descriptionChar: 'Si me necesitas, allí estaré.',
              phtoChar:
                  'https://cdn.images.express.co.uk/img/dynamic/36/1200x712/1623817_1.jpg',
            ),
            CharactetInfo(
                imageUrl:
                    'https://files.softicons.com/download/tv-movie-icons/iron-man-icon-set-by-svengraph/ico/Classic_Helmet.ico',
                character: 'IRON MAN',
                nameChar: 'Tony Stark',
                descriptionChar:
                    'No es suficiente estar en contra, tienes que estar a favor de algo mejor.',
                phtoChar:
                    'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/3/35/IronMan-EndgameProfile.jpg/revision/latest/top-crop/width/360/height/360?cb=20190423175213'),
            CharactetInfo(
              imageUrl:
                  'https://static.wikia.nocookie.net/future-fight/images/4/4c/Black_Panther_Uniform_II.png/revision/latest?cb=20190228154413',
              character: 'BLACK PANTHER',
              nameChar: 'Chadwick Boseman',
              descriptionChar: 'Era mi deber luchar por lo que amo..',
              phtoChar:
                  'https://i.kinja-img.com/gawker-media/image/upload/q_75,w_1600,h_900,c_fill/0b6a12ddec48d95278105ca50eb49bcf.JPG',
            )
          ],
        ));
  }
}
