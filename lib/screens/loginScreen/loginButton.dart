import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';
import 'package:motorSportApp/screens/homeScreen/homeScreen.dart';

class LoginButton extends StatelessWidget {
  final String email;
  final String password;

  const LoginButton({@required this.email, @required this.password});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: check email and password before login
        Navigator.of(context)
            .pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
      },
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
              'Login',
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
