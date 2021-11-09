// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:time_tracker_flutter_course/app/services/auth.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onSignOut;

  const HomePage({Key key, @required this.auth, this.onSignOut})
      : super(key: key);
  final AuthBase auth;
  Future<void> _signOut() async {
    try {
      await auth.signOut();
      onSignOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          FlatButton(
            onPressed: _signOut,
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 16.4,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
