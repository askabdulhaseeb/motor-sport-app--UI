import 'package:flutter/material.dart';

const String regular = 'Comfortaa';

const String appLogo = 'assets/images/logo.jpg';
const String googleIcon =
    'https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515358_10512.png';
const String defaultUser =
    'https://t3.ftcdn.net/jpg/00/64/67/52/360_F_64675209_7ve2XQANuzuHjMZXP3aIYIpsDKEbF5dD.jpg';

const Color appPrimaryColor = const Color(0xFFD8232A);

Row appName = Row(
  children: [
    Text(
      'ACE',
      style: TextStyle(
        color: appPrimaryColor,
        fontFamily: regular,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    Text(
      ' Motor Sports',
      style: TextStyle(
        color: Colors.black,
        fontFamily: regular,
        fontSize: 16,
        fontWeight: FontWeight.w300,
        // letterSpacing: 2,
      ),
    )
  ],
);
