import 'package:flutter/material.dart';

class FittedBoxWidgets extends StatefulWidget {
  const FittedBoxWidgets({super.key});

  @override
  State<FittedBoxWidgets> createState() => _FittedBoxWidgetsState();
}

class _FittedBoxWidgetsState extends State<FittedBoxWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text.rich(TextSpan(
            text: "Hello",
            children: <InlineSpan>[
              TextSpan(
                  text: 'World',
                  style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2,
                    decoration: TextDecoration.underline,
                  ))
            ],
            style: TextStyle(fontSize: 40))),
      ),
    );
  }
}
