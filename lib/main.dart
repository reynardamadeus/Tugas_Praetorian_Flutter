import 'package:flutter/material.dart';
import 'package:praeto_final_project/pages/components/pay.dart';
import 'package:praeto_final_project/pages/components/topup.dart';
import 'package:praeto_final_project/pages/homepage.dart';
import 'package:praeto_final_project/pages/login.dart';
import 'package:praeto_final_project/pages/register.dart';
import 'package:praeto_final_project/pages/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      routes: {
        '/login': (context) => Login(),
        '/register' : (context) => Register(),
        '/homepage' : (context) => Homepage(),
        '/pay' : (context) => Pay(),
        '/topup': (context) => Topup()
      },
    );
  }
}

