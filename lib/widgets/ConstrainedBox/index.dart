import 'package:flutter/material.dart';

class ConstrainedBoxWidgets extends StatefulWidget {
  const ConstrainedBoxWidgets({super.key});

  @override
  State<ConstrainedBoxWidgets> createState() => _ConstrainedBoxWidgetsState();
}

class _ConstrainedBoxWidgetsState extends State<ConstrainedBoxWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 200),
                child: SizedBox.expand(
                  child: Image.network(
                      "https://images.pexels.com/photos/20187061/pexels-photo-20187061/free-photo-of-women-in-the-village-grow-rice-together-for-the-family.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';

class ConstrainedBoxWidgets extends StatefulWidget {
  const ConstrainedBoxWidgets({super.key});

  @override
  State<ConstrainedBoxWidgets> createState() => _ConstrainedBoxWidgetsState();
}

class _ConstrainedBoxWidgetsState extends State<ConstrainedBoxWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200),
              child: const SizedBox.expand(
                child: Card(
                  color: Colors.amber,
                  child: Center(
                    child: Text("Card"),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.amber[200],
              child: InkWell(
                onTap: () {
                  final message = SnackBar(content: Text("Message"));
                  ScaffoldMessenger.of(context).showSnackBar(message);
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    "Save",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



*/