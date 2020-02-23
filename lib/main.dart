import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/dataFilePage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/homePage.dart';
import 'src/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.amber,
         textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
           body1: GoogleFonts.montserrat(textStyle: textTheme.body1),
         ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Home'),
    );
  }
}
