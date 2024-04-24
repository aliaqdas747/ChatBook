import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

import 'Pages/login_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //3rd
      theme: lightMode,
      home:  LoginPage(),

    );
  }
}
