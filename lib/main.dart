import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Cart/index.dart';

import 'package:flutter_application_1/page/Layout/layout.dart';
import 'package:flutter_application_1/page/Profile/index.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatefulWidget {
  const MyFlutterApp({super.key});

  @override
  State<MyFlutterApp> createState() => _MyFlutterAppState();
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My flutter app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue,
          useMaterial3: true,
          fontFamily: 'Caveat',
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue, primary: Colors.amberAccent)),
      home: const Layout(),
      routes: {
        '/cart': (context) => const CartPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
