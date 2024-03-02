import 'package:flutter/material.dart';

class ConstainerWidgets extends StatefulWidget {
  const ConstainerWidgets({super.key});

  @override
  State<ConstainerWidgets> createState() => _ConstainerWidgetsState();
}

class _ConstainerWidgetsState extends State<ConstainerWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
        constraints: const BoxConstraints(minWidth: 200, maxWidth: 300),
        decoration: BoxDecoration(color: Colors.amber[200]),
        child: const Text(
          "When content within a widget exceeds the bounds of its container, clipping can occur. This means that the parts of the clipBehavior.",
          style: TextStyle(fontSize: 40),
        ),
      ),
    )));
  }
}
