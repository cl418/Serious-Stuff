import 'package:flutter/material.dart';
import 'package:serious_stuff/screens/HomePage.dart';
import 'package:serious_stuff/constants.dart' as Constants;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        primaryColorDark: Constants.primaryColorDark,
        primaryColorLight: Constants.primaryColorLight,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: Constants.title),
    );
  }
}
