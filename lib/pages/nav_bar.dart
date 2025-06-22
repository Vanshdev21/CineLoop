import 'package:cineloop/pages/booking.dart';
import 'package:cineloop/pages/home.dart';
import 'package:cineloop/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  late List<Widget> pages;
  late Home homepage;
  late Booking bookingPage;

  int currentTabIndex = 0;

  @override
  void initState() {
    homepage = Home();
    bookingPage = Booking();

    pages = [homepage,bookingPage];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        color: Color.fromARGB(255, 204, 151, 7),
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.book),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
