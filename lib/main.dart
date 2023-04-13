import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:headphones_ecommerce/detail_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set transparent status bar
      statusBarIconBrightness:
          Brightness.light, // Set status bar icons to be dark
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'MyFont',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
