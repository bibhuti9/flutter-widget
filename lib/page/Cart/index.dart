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
      child: Align(
        child: Container(
          constraints: const BoxConstraints.expand(),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 1))
              ]),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: const Text(
            "Fuck",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    ));
  }
}
