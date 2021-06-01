import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';

class SignupButton extends StatelessWidget {
  final String name, email, password;
  final Function clearAll;
  const SignupButton({
    @required this.name,
    @required this.email,
    @required this.password,
    @required this.clearAll,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, appPrimaryColor, Colors.redAccent],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 40,
          width: 180,
          child: Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: regular,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
