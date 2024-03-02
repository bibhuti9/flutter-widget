import 'package:flutter/material.dart';

class SafeAreaWidgets extends StatefulWidget {
  const SafeAreaWidgets({super.key});

  @override
  State<SafeAreaWidgets> createState() => _SafeAreaWidgetsState();
}

class _SafeAreaWidgetsState extends State<SafeAreaWidgets> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text("Demo"),
      ),
    );
  }
}
