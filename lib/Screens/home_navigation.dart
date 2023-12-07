import 'package:flutter/material.dart';
import 'package:subscription_management/Screens/home_screen.dart';

import 'history_nav.dart';


class HomePageNavigation extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageNavigation> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  List<String> _tabTexts = ['Home', 'Search', 'Activity', 'More'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomePage(title: 'title'),
          Center(child: Text('Search Content')),
          HistoryNav(),
          Center(child: Text('More Content')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _selectedIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: _selectedIndex == 0 ? 'Home' : '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: _selectedIndex == 1 ? 'Search' : '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: _selectedIndex == 2 ? 'Activity' : '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: _selectedIndex == 3 ? 'More' : '',
          ),
        ],
      ),
    );
  }
}
