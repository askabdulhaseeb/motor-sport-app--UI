import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';
import 'package:motorSportApp/screens/signupScreen/signupScreen.dart';

class SignUpline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Register your account? ',
            style: TextStyle(
              fontFamily: regular,
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  SignUpScreen.routeName, (route) => false);
            },
            child: Text(
              'Sign Up',
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
