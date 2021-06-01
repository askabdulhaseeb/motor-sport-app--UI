import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';
import 'package:motorSportApp/screens/loginScreen/loginScreen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 30),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(defaultUser),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Default User Name',
                    style: TextStyle(
                      fontFamily: regular,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 16,
                    ),
                  ),
                ),
                Divider(color: appPrimaryColor),
                DrawerClickableItems(),
              ],
            ),
            ListTile(
              leading: Icon(Icons.logout, color: appPrimaryColor),
              title: Text(
                'Sign out',
                style:
                    TextStyle(fontFamily: regular, fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // TODO: Signout Session deactivate
                Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.routeName, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerClickableItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontFamily: regular, fontWeight: FontWeight.w400);
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.folder_shared_outlined, color: appPrimaryColor),
          title: Text('Membership/Dues', style: textStyle),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.date_range_outlined, color: appPrimaryColor),
          title: Text('Schedule', style: textStyle),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.security_outlined, color: appPrimaryColor),
          title: Text('Chapters', style: textStyle),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.chat, color: appPrimaryColor),
          title: Text('Chapter Chat', style: textStyle),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart_outlined, color: appPrimaryColor),
          title: Text('ACE Motorsports Apparel', style: textStyle),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.star_border, color: appPrimaryColor),
          title: Text('ACE Sponsors', style: textStyle),
          onTap: () {},
        ),
      ],
    );
  }
}
