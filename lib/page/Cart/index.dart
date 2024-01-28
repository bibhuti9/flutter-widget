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
          child: Stack(
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.amberAccent,
          ),
          Positioned(
            top: -10,
            right: -10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueAccent),
            ),
          )
        ],
      )),
    );
  }
}
