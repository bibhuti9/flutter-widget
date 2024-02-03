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
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: 20,
        separatorBuilder: (BuildContext context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemBuilder: (BuildContext context, index) {
          return SizedBox(
              height: 100,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/profile");
                  },
                  child: const ListTile(
                    leading: Icon(Icons.delete),
                    title: Text("Profile"),
                    trailing: Icon(Icons.call),
                  ),
                ),
              ));
        },
      ),
    ));
  }
}
