import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFB69441),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text("Movie Booking",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "images/infinity.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person, size: 40,color: Colors.white,),
                                Text("Vansh",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.movie, size: 40,color: Colors.white,),
                                Text("Infinity War",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.people, size: 40,color: Colors.white,),
                                Text("  1",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFB69441),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text("Movie Booking",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "images/pushpa.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person, size: 40,color: Colors.white,),
                                Text("Vansh",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.movie, size: 40,color: Colors.white,),
                                Text("Pushpa 2",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.people, size: 40,color: Colors.white,),
                                Text("  4",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
