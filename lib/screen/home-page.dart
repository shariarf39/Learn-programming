import 'package:better_learn_programming/provider/Internet/bookconnectivity.dart';
import 'package:better_learn_programming/provider/Internet/covidInternetConnectivity.dart';
import 'package:better_learn_programming/screen/pages/covid19/covid-page.dart';
import 'package:better_learn_programming/screen/pages/quiz%20page/quiz-page-welcome.dart';
import 'package:better_learn_programming/screen/pages/topic-page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> pages = [
    TopicPage(), //0
    QuizWelcomePage(), //1
    BookInternetConnectivity(), //2
    CovidInternetConnectivity(), //3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: pages,
        index: currentTab,
      ),
      bottomNavigationBar: BottomNavyBar(
        itemCornerRadius: 50,
        containerHeight: 60,
        backgroundColor: Color(0xffbfafb2),
        selectedIndex: currentTab,
        animationDuration: Duration(milliseconds: 300),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        onItemSelected: (index) {
          setState(
            () {
              currentTab = index;
            },
          );
        },
        items: [
          BottomNavyBarItem(
            title: Text(
              'Home',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            icon: Icon(
              currentTab == 0 ? Mdi.home : Mdi.homeOutline,
              size: 30,
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black54,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text(
              'Quiz',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            textAlign: TextAlign.center,
            icon: Icon(
              currentTab == 1
                  ? Mdi.chartAreasplineVariant
                  : Mdi.chartLineStacked,
              size: 30,
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black54,
          ),
       /*   BottomNavyBarItem(
            title: Text(
              'Books',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            textAlign: TextAlign.center,
            icon: Icon(
              currentTab == 2 ? Mdi.book : Mdi.bookOutline,
              size: 30,
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black54,
          ),*/
          BottomNavyBarItem(
            title: Text(
              'About',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            textAlign: TextAlign.center,
            icon: Icon(
              currentTab == 3 ? Mdi.appsBox : Mdi.appsBox,
              size: 30,
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black54,
          ),
        ],
      ),
    );
  }
}
