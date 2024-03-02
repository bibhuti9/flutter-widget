import 'package:flutter/material.dart';

class ButtonBarWidget extends StatefulWidget {
  const ButtonBarWidget({super.key});

  @override
  State<ButtonBarWidget> createState() => _ButtonBarWidgetState();
}

class _ButtonBarWidgetState extends State<ButtonBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "App Bar",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Colors.amber[100],
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            ],
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: Expanded(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Button 1"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Button 2"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Button 3"),
                      ),
                    ],
                  ),
                ))),
        body: const SafeArea(
          child: Center(
            child: Text("Click"),
          ),
        ));
  }
}
