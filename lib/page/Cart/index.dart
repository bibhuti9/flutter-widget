import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/generateData.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<GenerateData> quote = [
    GenerateData(author: "Juhny baba", title: "this is my workd")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
              maxHeight: 800, maxWidth: 400, minHeight: 300, minWidth: 200),
          child: Container(
            color: Colors.blueAccent,
            child: const Text(
              "Fuck",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
