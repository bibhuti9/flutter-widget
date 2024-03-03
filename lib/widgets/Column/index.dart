import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/Text/index.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: double.infinity,
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                    fit: BoxFit.cover,
                  ),
                )),
                Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10),
                            // decoration: const BoxDecoration(color: Colors.red),
                            child: const Column(
                              children: [
                                TypographyWidget(title: "Product Namr")
                              ],
                            ),
                          ),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text("Add to cart")),
                            ElevatedButton(
                                onPressed: () {}, child: const Text("Buy now"))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
