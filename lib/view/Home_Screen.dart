import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nasa_app/calendar/calendar_screen.dart';
import 'package:nasa_app/view/FirstScreen.dart';
import 'package:nasa_app/view/map_screens.dart';
import 'package:nasa_app/view/profile_screen.dart';


import '../const/constant.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  final List<Widget> _widgetOptions = <Widget>[
    FirstScreen(),
    CalendarScreen(),

    MapScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff1f1f1),
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Calendar App',style: TextStyle(color: Colors.white),),
          backgroundColor: mainColor,
          elevation: 0,
        ),
        body: Column(
          children: [
             Expanded(child: Center(child: _widgetOptions.elementAt(_selectedIndex))
             ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 2,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor:  Color(0xffad3f17),
              color: Colors.black,
              tabs: const [
                GButton(

                  icon: Icons.home,
                  text: 'Home',


                ),
                GButton(

                  icon: Icons.calendar_month,
                  text: 'Calender',
                ),

                GButton(

                  icon: Icons.location_on,
                  text: 'Live',
                ),
                GButton(

                  icon: Icons.person,
                  text: 'Profile',
                ),



              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
