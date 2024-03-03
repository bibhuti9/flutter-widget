import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Button/button.dart';
import 'package:flutter_application_1/widgets/Column/index.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar", style: TextStyle(fontSize: 25)),
        backgroundColor: Colors.amber[100],
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.amber, Colors.orange]))),
        bottom: PreferredSize(
          child: ButtonBar(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Events"),
                  style: ButtonStyle()),
              ElevatedButton(onPressed: () {}, child: Text("Groups")),
            ],
          ),
          preferredSize: const Size.fromHeight(100),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.heart_broken),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: const ColumnWidget(),
    );
  }
}
