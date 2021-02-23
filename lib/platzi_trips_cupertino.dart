import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white.withAlpha(50),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey),
                  activeIcon: Icon(Icons.home, color: Color(0xCFF584CD1),)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.grey),
                  activeIcon: Icon(Icons.search, color: Color(0xCFF584CD1),)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.grey),
                  activeIcon: Icon(Icons.person, color: Color(0xCFF584CD1),)
              ),
            ]
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
        },
      )
	  );
  }
}