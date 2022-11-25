import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:registration_page/pages/reg_page.dart';

void main() {
  runApp(RegUIApp());
}

class RegUIApp extends StatelessWidget {

  Color _primaryColor = HexColor("#6441a5");
  Color _accentColor = HexColor("#83E7FE");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home:  RegPage(),
    );
  }
}

