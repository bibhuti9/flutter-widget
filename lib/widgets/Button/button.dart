import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Click"),
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40)),
      ),
    );
  }
}
