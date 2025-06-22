import 'package:carousel_slider/carousel_slider.dart';
import 'package:cineloop/pages/detail_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imageUrl = [
    'images/infinity.jpg',
    'images/salman.jpg',
    'images/shahrukhmovies.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile photo row
            Row(
              children: [
                Image.asset(
                  "images/wave.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 15),
                Text(
                  "Hello, Vansh",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            //Welcome Text
            Text(
              "Welcome To,",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            Row(
              children: [
                Text(
                  "Cine",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Loop",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFEDB41D),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            //Slider
            CarouselSlider(
              items: imageUrl.map((url) {
                return Builder(
                  builder: (context) {
                    return Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(url, fit: BoxFit.cover),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 250,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
              ),
            ),
            SizedBox(height: 20),
            // Trending movies
            Text(
              "Top Trending Movies",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //infinity War
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(
                                img: "images/infinity.jpg",
                                name: "Infinity Wars",
                                moviedetail: "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.",
                                shortdetail: "Action & Sci-Fi",
                              ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/infinity.jpg",
                              height: 220,
                              width: 220,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 200),
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Infinity War",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Acton, Sci-fi",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  // Pushpa 2
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailPage(
                              img:"images/pushpa.jpg", name: "Pushpa 2",
                              moviedetail: "A smuggling kingpin faces off against a vengeful rival while manipulating politics, making big deals, and navigating tense confrontations.",
                              shortdetail: "Acton, Advanture")));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/pushpa.jpg",
                              height: 220,
                              width: 220,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 200),
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pushpa 2",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Acton, Advanture",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white54,
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
            ),
          ],
        ),
      ),
    );
  }
}
