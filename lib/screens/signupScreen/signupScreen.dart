import 'package:flutter/material.dart';
import 'package:motorSportApp/screens/appConstrians.dart';
import 'loginLine.dart';
import 'googleSignup.dart';
import 'signupButton.dart';

class SignUpScreen extends StatefulWidget {
  static final routeName = '/SignUpScreen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstNameController = new TextEditingController();
  TextEditingController _lastNameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  String _firstName;
  String _lastName;
  String _email;
  String _password;

  clearAll() {
    setState(() {
      _firstName = '';
      _lastName = '';
      _email = '';
      _password = '';

      _firstNameController.clear();
      _lastNameController.clear();
      _emailController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final _firstNameTextFormField = TextFormField(
      decoration: const InputDecoration(
        hintText: 'Enter your First Name',
        labelText: 'First Name',
      ),
      controller: _firstNameController,
      onChanged: (value) {
        setState(() {
          _firstName = value;
        });
      },
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
    );
    final _lastNameTextFormField = TextFormField(
      decoration: const InputDecoration(
        hintText: 'Enter your Last Name',
        labelText: 'Last Name',
      ),
      controller: _lastNameController,
      onChanged: (value) {
        setState(() {
          _lastName = value;
        });
      },
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
    );
    final _emailTextFormField = TextFormField(
      decoration: const InputDecoration(
        hintText: 'test@test.com',
        labelText: 'Email',
      ),
      controller: _emailController,
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
    final _passwordTextFormField = TextFormField(
      decoration: const InputDecoration(
        hintText: 'Enter your Password',
        labelText: 'Password',
      ),
      controller: _passwordController,
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.only(bottom: 10, top: 40),
                    child: Image.asset(appLogo),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        _firstNameTextFormField,
                        _lastNameTextFormField,
                        _emailTextFormField,
                        _passwordTextFormField,
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SignupButton(
                    name: "$_firstName $_lastName",
                    email: _email,
                    password: _password,
                    clearAll: clearAll,
                  ),
                ],
              ),
              Column(
                children: [
                  GoogleSignup(),
                  LoginLine(),
                ],
              ),
            ],
          )),
    );
  }
}
