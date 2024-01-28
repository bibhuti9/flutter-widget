import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Cart/index.dart';

import 'package:flutter_application_1/page/Home/index.dart';
import 'package:flutter_application_1/page/Profile/index.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My flutter app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue,
          useMaterial3: true,
          fontFamily: 'Caveat',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const HomePage(),
      routes: {
        '/cart': (context) => const CartPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
