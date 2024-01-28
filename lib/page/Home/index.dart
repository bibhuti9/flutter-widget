import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.amber[200]),
          alignment: Alignment.topCenter,
          child: const Text.rich(TextSpan(
              text: "Hello",
              style: TextStyle(fontSize: 20),
              children: <InlineSpan>[
                TextSpan(
                  text: "World",
                  style: TextStyle(fontSize: 30),
                )
              ])),
        ),
      ),
    );
  }
}
