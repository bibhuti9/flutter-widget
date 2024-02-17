import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/generateData.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool fuck = false;

  List<GenerateData> quote = [
    GenerateData(author: "Juhny baba", title: "this is my workd")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: 60,
            width: 200,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Click"),
              style: ElevatedButton.styleFrom(
                  primary: fuck ? Colors.amber : Colors.red,
                  elevation: 1,
                  padding: const EdgeInsets.symmetric(horizontal: 40)),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                fuck = !fuck;
              });
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              child: const Align(
                child: Text("Click"),
              ),
              width: 200,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                  minHeight: 40, minWidth: 100, maxWidth: 300, maxHeight: 350),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ))
        ],
      ),
    ));
  }
}
