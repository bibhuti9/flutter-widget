import 'package:flutter/material.dart';

class TextFeilds extends StatefulWidget {
  const TextFeilds({super.key});

  @override
  State<TextFeilds> createState() => _TextFeildState();
}

class _TextFeildState extends State<TextFeilds> {
  var input = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextField(
                  onChanged: (ele) => input += ele,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter mail",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
                Text("Input ${input}")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
