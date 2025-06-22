import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {

  String img,name,shortdetail,moviedetail;
  DetailPage({required this.img,required this.name,required this.moviedetail,required this.shortdetail});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> getFormattedDates() {
    final now = DateTime.now();
    final formatter = DateFormat('EEE d'); // 'EEE' for day, 'd' for date
    return List.generate(7, (index) {
      final date = now.add(Duration(days: index));
      return formatter.format(date);
    });
  }

  int track = 0,number=1;
  bool eight = false, twelew = false, four = false;

  @override
  Widget build(BuildContext context) {
    final date = getFormattedDates();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              widget.img,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(top: 40, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 25),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2.5,
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1B1F25), Color(0xFF14171B)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    widget.shortdetail,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white54,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.moviedetail,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white54,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Select Date",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      itemCount: date.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              track = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEED51E),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: track == index
                                    ? Colors.white
                                    : Colors.black,
                                width: 4,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                date[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Select Time Slot",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            eight = true;
                            twelew = false;
                            four = false;
                          });
                        },
                        child: eight
                            ? Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffeed51e), // yellow color
                                    width: 5,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "08:00 AM",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffeed51e), // yellow color
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "08:00 AM",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            eight = false;
                            twelew = true;
                            four = false;
                          });
                        },
                        child: twelew
                            ? Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xffeed51e), // yellow color
                                      width: 5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "12:00 PM",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffeed51e), // yellow color
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "12:00 PM",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            eight = false;
                            twelew = false;
                            four = true;
                          });
                        },
                        child: four
                            ? Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffeed51e), // yellow color
                                    width: 5,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "04:00 PM",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffeed51e), // yellow color
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "04:00 PM",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 2),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    if(number>=1){
                                      number++;
                                    }
                                  });
                                },
                                icon: Icon(Icons.add,color: Colors.white,)),
                            Text(
                              "$number",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xffeed51e),
                                fontSize: 30,
                              ),
                            ),
                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    if(number>=1){
                                      number--;
                                    }else if(number==0){
                                      number =1;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove,color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color(0xffeed51e),
                          border: Border.all(color: Colors.white,width: 3),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Total : \$${number*50}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
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
