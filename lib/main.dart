import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Cart/index.dart';

import 'package:flutter_application_1/page/Profile/index.dart';
import 'package:flutter_application_1/widgets/AppBar/index.dart';
import 'package:flutter_application_1/widgets/AspectRatio/index.dart';
import 'package:flutter_application_1/widgets/ButtonBar/index.dart';
import 'package:flutter_application_1/widgets/ConstrainedBox/index.dart';
import 'package:flutter_application_1/widgets/Container/index.dart';
import 'package:flutter_application_1/widgets/FittedBox/fittedBox.dart';
import 'package:flutter_application_1/widgets/Form/Form/index.dart';
import 'package:flutter_application_1/widgets/Parent/index.dart';
import 'package:flutter_application_1/widgets/SafeArea/index.dart';
import 'package:flutter_application_1/widgets/SnackBar/index.dart';
import 'package:flutter_application_1/widgets/Spacer/index.dart';
import 'package:flutter_application_1/widgets/TextFeild/index.dart';

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
      home: const FormWidget(),
      routes: {
        '/cart': (context) => const CartPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
