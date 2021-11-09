// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_import, non_constant_identifier_names, unnecessary_brace_in_string_interps, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/services/auth.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.auth, @required this.onSignIn})
      : super(key: key);
  final AuthBase auth;
  final void Function(User) onSignIn;
  Future<void> _signInAonymously() async {
    try {
      final user = await auth.signInAnonymously();
      onSignIn(user);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Tracker"),
        elevation: 2,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 40),
          // RaisedButton(
          //   child: Text("Sign in with Google"),
          //   onPressed: () {},
          // )

          CustomElevatedButton(Text("Sign in with Google"), Colors.white, () {},
              Colors.black, 'images/google-logo.png'),
          SizedBox(height: 8),

          CustomElevatedButton(
            Text('Sign in with Facebook'),
            Color(0xFF334D92),
            () {},
            Colors.white,
            'images/facebook-logo.png',
          ),
          SizedBox(height: 8),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Sign in with email"),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Color.fromRGBO(187, 0, 27, 1),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Or",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 50,
            child: ElevatedButton(
              onPressed: _signInAonymously,
              child: Text("Go ananymous"),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Colors.yellowAccent,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
