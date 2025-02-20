import 'package:flutter/material.dart';
import 'package:whatsapp_clon_project/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp demo',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        colorScheme: ColorScheme.light(
          primary: Color(0xff075E54),
          secondary: Color(0xff25D366),
        ),
      ),
      home: Home(),
    );
  }
}
