import 'package:flutter/material.dart';
// import 'package:counterapp/src/pages/home_page.dart';
import 'package:counterapp/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}
