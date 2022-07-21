import 'package:ecoshop_projet/pages/home_page.dart';
import 'package:ecoshop_projet/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),

      //Théme Dark
      /*
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark
        ),
      */

      themeMode: ThemeMode.light,

      //pour Changer du AppBar
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),

      //Pour Changer le bg color AppBar (Mais il faut supprimer brightness pour activer le bg-color)
      darkTheme: ThemeData(
        //
        brightness: Brightness.dark,
        //primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(), //lorsque en utilise la routes il faut supprimer home:HomePage(),
        "/home": (context) =>  HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
