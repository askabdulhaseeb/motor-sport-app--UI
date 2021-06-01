import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';

class ChapterChatScreen extends StatelessWidget {
  static final routeName = '/ChapterChatScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: appPrimaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text('Chapter Chat Screen'),
      ),
    );
  }
}
