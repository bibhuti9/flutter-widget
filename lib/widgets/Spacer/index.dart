import 'package:flutter/material.dart';

class SpacerWidgets extends StatefulWidget {
  const SpacerWidgets({super.key});

  @override
  State<SpacerWidgets> createState() => _SpacerWidgetsState();
}

class _SpacerWidgetsState extends State<SpacerWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.amber[100],
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red[100],
        ),
        Spacer(),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue[100],
        ),
      ],
    ));
  }
}
