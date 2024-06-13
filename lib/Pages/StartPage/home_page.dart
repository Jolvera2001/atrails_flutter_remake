import 'package:atrails/Pages/StartPage/Home/feed_page.dart';
import 'package:atrails/Pages/StartPage/Home/groups_page.dart';
import 'package:atrails/Pages/StartPage/Home/map_page.dart';
import 'package:atrails/Pages/StartPage/Home/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ super.key });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue.shade400,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Feed"
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.chat_bubble),
            icon: Icon(Icons.chat_bubble_outline),
            label: "Groups"
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.map),
            icon: Icon(Icons.map_outlined),
            label: "Map"
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile"
          ),
        ]
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: const <Widget>[
        FeedPage(),
        GroupsPage(),
        MapPage(),
        ProfilePage()
        ],
      )
    );
  }
}