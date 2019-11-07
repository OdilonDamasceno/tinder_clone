import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/login.page.dart';

void main() => runApp(TinderClone());

class TinderClone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tinder',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(36, 36, 36, 1),
      ),
      home: LoginPage(),
    );
  }
}
