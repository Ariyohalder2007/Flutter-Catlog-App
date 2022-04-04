import 'package:flutter/material.dart';
import 'package:flutter_catlog/pages/homePage.dart';
import 'package:flutter_catlog/pages/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalog App',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        primaryTextTheme: GoogleFonts.firaCodeTextTheme(),
        fontFamily: GoogleFonts.firaCode().fontFamily,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.deepOrange,
        primaryTextTheme: GoogleFonts.firaCodeTextTheme(),
        fontFamily: GoogleFonts.firaCode().fontFamily,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
