import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Button/button.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _Layout();
}

class _Layout extends State<Layout> {
  String number = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  child: Text("Your phone number : $number"),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.red[100]),
                )),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: const Column(
                    children: [
                      Expanded(
                          child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.contact_phone),
                                  hintText: "Enter your number",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))))),
                      Button()
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.amber[200],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                ),
                flex: 4)
          ],
        ),
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(color: Colors.red[100]),
      ),
    );
  }
}
