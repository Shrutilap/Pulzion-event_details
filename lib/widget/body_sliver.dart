import 'package:even_details/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:even_details/theme.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:glowy_borders/glowy_borders.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 31, 39, 28),
              Colors.black,
              Color.fromARGB(255, 50, 59, 55),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom Container wrapping the entire TabBar
            CustomContainer(
              h: 50, // Set the height for the glowing border
              w: double.infinity,
              thechild: TabBar(
                indicatorColor: Colors.transparent, // Remove underline
                labelColor: Colors.white, // Color for selected tab label
                unselectedLabelColor:
                    Colors.grey, // Color for unselected tab label
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, // Bold style for selected tab
                  fontSize: 20, // Increased font size for selected tab
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 16, // Normal size for unselected tabs
                ),
                tabs: const [
                  Tab(text: 'Description'),
                  Tab(text: 'Rounds'),
                  Tab(text: 'Contact'),
                ],
              ),
            ),

            SizedBox(
              height: size.height * 0.5,
              child: TabBarView(
                children: [
                  // Description tab with image overlay
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Image as background
                          // Image.asset(
                          //   'assets/images/description_card.jpg', // Update this to your image path
                          //   fit: BoxFit.cover,
                          //   width: double.infinity,
                          //   height: double.infinity,
                          // ),
                          // Text overlay
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFBFC9CA)
                                  .withOpacity(0.1), // Background color
                              borderRadius: BorderRadius.circular(
                                  10), // Optional: Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.blue.withOpacity(0.5), // Optional: Blue color for shadow
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "Exclusive FE Event with two rounds: Round 1 features aptitude and basic programming MCQs, and Round 2 is a competitive programming contest (Hackerrank or our platform) with a final question at Codeforces Div 2 difficulty.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 23,
                                color: const Color(0xFFBFC9CA),
                                fontFamily: "VT",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Rounds tab
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Text overlay
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFBFC9CA)
                                  .withOpacity(0.1), // Background color
                              borderRadius: BorderRadius.circular(
                                  10), // Optional: Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.blue.withOpacity(0.5), // Optional: Blue color for shadow
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "Rounds:\n1. Round 1: Aptitude and basic programming MCQs.\n2. Round 2: Competitive programming contest.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 23,
                                color: const Color(0xFFBFC9CA),
                                fontFamily: "VT",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Contact tab
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Text overlay
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFBFC9CA)
                                  .withOpacity(0.1), // Background color
                              borderRadius: BorderRadius.circular(
                                  10), // Optional: Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.blue.withOpacity(0.5), // Optional: Blue color for shadow
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "Contact Volunteers:\n1. Alice - 1234567890\n2. Bob - 0987654321",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 23,
                                color: const Color(0xFFBFC9CA),
                                fontFamily: "VT",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Add to Cart Swipe Button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomContainer(
                h: 50, // Adjust height and width according to your needs
                w: double.infinity, // Full width
                thechild: SwipeButton.expand(
                  thumb: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  activeThumbColor: Colors.grey,
                  activeTrackColor: Colors.black,
                  onSwipe: () {
                    // Show a snack bar on swipe
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          "Added to Cart!",
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: const Color(0xFFBFC9CA),
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
