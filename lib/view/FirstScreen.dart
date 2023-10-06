import 'package:flutter/material.dart';
import 'package:nasa_app/const/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final Uri _url = Uri.parse(
      'https://m.facebook.com/story.php?story_fbid=4214417768662410&id=230002920437268&mibextid=9R9pXO');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  final Uri _url1 = Uri.parse(
      'https://m.youtube.com/watch?fbclid=IwAR0YNbRzEC0MuyMaOyPAiwllADTft6bh1V7q_ImqfXOtSufOGITGYaHm7mM&v=J04GFN2Pq1w&feature=youtu.be');
  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lunar Eclipses",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
              child: Text(
                """Lunar eclipses occur at the full moon phase. When Earth is positioned precisely between the Moon and Sun, Earth’s shadow falls upon the surface of the Moon, dimming it and sometimes turning the lunar surface a striking red over the course of a few hours. Each lunar eclipse is visible from half of Earth.""",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Text(
                "There are three different types of lunar eclipses:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "1- Total lunar eclipse",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/total-eclipse.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
              child: Text(
                """The Moon moves into the inner part of Earth’s shadow, or the umbra. Some of the sunlight passing through Earth’s atmosphere reaches the Moon’s surface, lighting it dimly. Colors with shorter wavelengths ― the blues and violets ― scatter more easily than colors with longer wavelengths, like red and orange. Because these longer wavelengths make it through Earth’s atmosphere, and the shorter wavelengths have scattered away, the Moon appears orangish or reddish during a lunar eclipse. The more dust or clouds in Earth’s atmosphere during the eclipse, the redder the Moon appears.""",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
            Divider(
              thickness: 3,
              endIndent: 20,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "2- Partial lunar eclipse",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/partial.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
              child: Text(
                """An imperfect alignment of Sun, Earth and Moon results in the Moon passing through only part of Earth's umbra. The shadow grows and then recedes without ever entirely covering the Moon.""",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
            Divider(
              thickness: 3,
              endIndent: 20,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "3- Penumbral eclipse",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/penumbral-eclipse.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
              child: Text(
                """if you don’t know this one is happening, you might miss it. The Moon travels through Earth’s penumbra, or the faint outer part of its shadow. The Moon dims so slightly that it can be difficult to notice.""",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
            Divider(
              color: mainColor,
              thickness: 3,
              endIndent: 20,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Eclipses Gallery From NASA",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/74_annular_eclipse_detail_1-3.jpg",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: _launchUrl,
                child: Text(
                    'https://m.facebook.com/story.php?story_fbid=4214417768662410&id=230002920437268&mibextid=9R9pXO'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/NHQ201708210307~large.jpg",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                  onTap: _launchUrl,
                  child: Text(
                      'https://m.youtube.com/watch?fbclid=IwAR0YNbRzEC0MuyMaOyPAiwllADTft6bh1V7q_ImqfXOtSufOGITGYaHm7mM&v=J04GFN2Pq1w&feature=youtu.be')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/eclipse_1-1280-1.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/Solar_Eclipse_2017_children_pointing_credit_Emily_Maletz_for_the_NISE_Network_lowerres_-_Catherine_McCarthy-jpeg.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/5663_Bailys_Beads-1.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/Total_solar_eclipse_over_Madras__Oregon-1.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/2701_afrc2017-0233-009.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/Andes_Eclipse.webp",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/PIA21929~orig.jpg",
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchUrl,
              child: Text(
                  'https://m.facebook.com/story.php?story_fbid=4214417768662410&id=230002920437268&mibextid=9R9pXO'),
            ),

          ],
        ),
      ),
    );
  }
}
