import 'package:even_details/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final List<String> showNames = [
    'Codelicious',
    'Codex',
    'Compute and Compete',
    'Hire Hustle',
    'Dataquest',
    'Electroquest',
    'Dextrous',
    'Fandom',
    'Insight',
    'Freeze the second',
    'Web and App'
  ];
    return Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 31, 39, 28),
              Colors.black,
              Color.fromARGB(255, 50, 59, 55)
            ]
          )
        ),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Exclusive FE Event with two rounds: Round 1 features aptitude and basic programming MCQs, and Round 2 is a competitive programming contest (Hackerrank or our platform) with a final question at Codeforces Div 2 difficulty.",
                textAlign: TextAlign.start,
                style: TextStyle(
                fontSize: 23,
                color: Colors.amber,
                fontFamily: "VT"
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 10),
              child: Text(
                'Related Events',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.amber
                ),
              ),
            ),
            
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _CustomIcon(
                  icon: Icons.stars,
                  text: '89%',
                ),
                _CustomIcon(
                  icon: Icons.tv,
                  text: 'Netflix',
                ),
                _CustomIcon(
                  icon: Icons.wc,
                  text: 'Tv +14',
                ),
                _CustomIcon(
                  icon: Icons.av_timer_rounded,
                  text: '50m',
                ),
              ],
            ),
            
            const SizedBox(
              height: 15,
            ),

            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  showNames.length, 
                  (index) => Container(
                    width: size.height * 0.22,
                    child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/Group 70.png', 
                            height: size.height * 0.20,
                            width: size.width * 0.40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          showNames[index], 
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontFamily: 'VT',
                          ),
                        ),
                      ],
                    ),
                  )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            )
          ],
        )
      );
  }
}

class _CustomIcon extends StatelessWidget {
  const _CustomIcon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 45,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        )
      ],
    );
  }
}
