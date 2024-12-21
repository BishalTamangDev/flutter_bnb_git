import 'package:bnb_git/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BnbApp());
}

class BnbApp extends StatelessWidget {
  const BnbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bottom Navigation Bar App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: MainPage(),
    );
  }
}
