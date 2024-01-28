import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/generateData.dart';
import 'package:flutter_application_1/page/Profile/index.dart';

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
      body: Center(
          child: SizedBox.fromSize(
        size: const Size(200, 200),
        child: const Card(
          color: Colors.amberAccent,
          child: Center(
            child: Text("Hello"),
          ),
        ),
      )),
    );
  }
}
