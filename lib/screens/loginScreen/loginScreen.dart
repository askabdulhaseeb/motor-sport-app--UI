import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';
import 'forgetPassword.dart';
import 'loginButton.dart';
import 'googleSignup.dart';
import 'signupLine.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = '/LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // to clear the resoures
  @override
  void dispose() {
    _email.clear();
    _password.clear();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Email entering filed
    final _emailTextFormField = TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.email_outlined),
        hintText: 'test@test.com',
        labelText: 'Email',
      ),
      controller: _email,
      onChanged: (value) {
        setState(() {});
      },
      keyboardType: TextInputType.emailAddress, // type of keyborad
      textInputAction:
          TextInputAction.next, // Type of action button of keyborad
    );
    final _passwordTextFormField = TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.lock_outline_rounded),
        hintText: 'Enter your Password',
        labelText: 'Password',
      ),
      controller: _password,
      onChanged: (value) {
        setState(() {});
      },
      obscureText: true,
      keyboardType: TextInputType.visiblePassword, // type of keyborad
      textInputAction:
          TextInputAction.done, // Type of action button of keyborad
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only(bottom: 10, top: 80),
                  child: Image.asset(appLogo), // Show the App Logo
                ),
                Form(
                  child: Column(
                    children: [
                      _emailTextFormField, // Show Email Entering field
                      const SizedBox(height: 4),
                      _passwordTextFormField, // show password entering field
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ForgetPasswordLine(), // Show Forget password line
                ),
                LoginButton(
                  email: _email.text,
                  password: _password.text,
                ),
              ],
            ),
            Column(
              children: [
                GoogleSignup(),
                SignUpline(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
