import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/chapterChatScreen/chapterChatScreen.dart';
import 'package:motorSportApp/screens/loginScreen/loginScreen.dart';
import 'package:motorSportApp/screens/profileScreen/profileScreen.dart';
import 'package:motorSportApp/screens/signupScreen/signupScreen.dart';
import 'package:motorSportApp/screens/splashScreen/splashScreen.dart';

import 'screens/homeScreen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ACE Motor Sports',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.red),
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),

        //
        ChapterChatScreen.routeName: (ctx) => ChapterChatScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
      },
    );
  }
}
