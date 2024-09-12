import 'package:even_details/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeSliverChallenge(),
    );
  }
}

class ShowDetailsPage extends StatelessWidget {
  // List of related show names
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300.0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: 15, bottom: 20),
                  title: Text(
                    'Codex_',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontFamily: 'VT',
                    ),
                  ),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/Pulzion.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.black,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Exclusive FE Event with two rounds: Round 1 features aptitude and basic programming MCQs, and Round 2 is a competitive programming contest (Hackerrank or our platform) with a final question at Codeforces Div 2 difficulty.",
                        style: TextStyle(
                          fontSize: 25,
                          color: const Color(0xFFBFC9CA),
                          fontFamily: 'VT',
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'More events',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontFamily: 'VT',
                        ),
                      ),
                      SizedBox(
                        height: 210,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: showNames.length, // Number of related shows
                          itemBuilder: (context, index) {
                            return Container(
                              width: 130,
                              margin: EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      'assets/images/card.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    showNames[index], // Display different show names
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 25,
                                      fontFamily: 'VT',
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0), // Add padding here
                        child: Text(
                          'Information',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                            fontFamily: 'VT',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0), // Add padding here
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 2, // Number of items
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      'Register',
                                      style: TextStyle(color: Colors.amber, fontFamily: 'VT', fontSize: 35),
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      'Contact',
                                      style: TextStyle(color: Colors.amber, fontFamily: 'VT', fontSize: 35),
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
