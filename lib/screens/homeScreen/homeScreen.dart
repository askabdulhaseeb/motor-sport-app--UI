import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motorSportApp/screens/appConstrians.dart';
import 'package:motorSportApp/screens/chapterChatScreen/chapterChatScreen.dart';
import 'package:motorSportApp/screens/eventsScreen/eventsScreen.dart';
import 'package:motorSportApp/screens/galleryScreen/galleryScreen.dart';
import 'package:motorSportApp/screens/homeScreen/mainAppBar.dart';
import 'package:motorSportApp/screens/mediaScreen/mediaScreen.dart';
import 'package:motorSportApp/screens/newsScreens/newsScreen.dart';
import 'package:motorSportApp/screens/profileScreen/profileScreen.dart';

import 'appDrawer.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = '/HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  void dispose() {
    super.dispose();
  }

  static List<Widget> _widgetOptions = <Widget>[
    EventsScreen(),
    GalleryScreen(),
    NewsScreen(),
    MediaScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    _openChatScreen() {
      Navigator.of(context).pushNamed(ChapterChatScreen.routeName);
    }

    _openProfileScreen() {
      Navigator.of(context).pushNamed(ProfileScreen.routeName);
    }

    return Scaffold(
      appBar: mainAppBar(_openChatScreen, _openProfileScreen),
      drawer: AppDrawer(),
      body: Container(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: appPrimaryColor,
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeInOutSine,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.event),
            title: Text('Events'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.photo_library_outlined),
            title: Text('Gallery'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            title: Text('News'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.art_track_sharp),
            title: Text('Media'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
