import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prova1/screens/home.dart';
import 'package:prova1/styles/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppStyles.persianPink,
          foregroundColor: Colors.white,
          elevation: 4,
          shadowColor: Colors.black,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
