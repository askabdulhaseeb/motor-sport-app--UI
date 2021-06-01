import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';

AppBar mainAppBar(Function openChatScreen, Function openProfileScreen) {
  return AppBar(
    title: appName,
    leadingWidth: 24,
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: appPrimaryColor),
    actions: [
      GestureDetector(
        onTap: () => openProfileScreen(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: CircleAvatar(
              radius: 14,
              // TODO: Add user image here
              backgroundImage: NetworkImage(defaultUser),
            ),
          ),
        ),
      ),
      IconButton(
        icon: Icon(
          Icons.chat,
          color: appPrimaryColor,
        ),
        onPressed: () => openChatScreen(),
      )
    ],
  );
}
