import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';
import 'package:motorSportApp/screens/loginScreen/loginScreen.dart';

class LoginLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already has a account? ',
            style: TextStyle(
              fontFamily: regular,
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginScreen.routeName, (route) => false);
            },
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: regular,
                fontWeight: FontWeight.bold,
                color: appPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
