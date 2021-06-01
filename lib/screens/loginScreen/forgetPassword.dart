import 'package:flutter/material.dart';

class ForgetPasswordLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          // TODO: Forget Password
        },
        child: Text('Forget Password'),
      ),
    );
  }
}
