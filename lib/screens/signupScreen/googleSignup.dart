import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';

class GoogleSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          // onTap: () => AuthMethods().signInWithGoogle(context),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(width: 0.5, color: Colors.grey),
            ),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  child: Image.network(googleIcon),
                ),
                SizedBox(width: 10),
                Text('Sign up with Google')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
