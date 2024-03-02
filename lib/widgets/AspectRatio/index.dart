import 'package:flutter/material.dart';

class AspectRatioWidgets extends StatefulWidget {
  const AspectRatioWidgets({super.key});

  @override
  State<AspectRatioWidgets> createState() => _AspectRatioWidgetsState();
}

class _AspectRatioWidgetsState extends State<AspectRatioWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 300, minWidth: 200),
      child: SizedBox(
        child: Container(
          child: Text("Hello world"),
          decoration: const BoxDecoration(color: Colors.amber),
        ),
      ),
    ));
  }
}
