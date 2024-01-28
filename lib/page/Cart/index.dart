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
      body: SingleChildScrollView(
        reverse: true,
        child: Row(
          children: [
            Container(
              height: 400,
              color: Colors.amberAccent,
            ),
            Container(
              height: 400,
              color: Colors.blueAccent,
            ),
            Container(
              height: 400,
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
