import 'package:flutter/material.dart';

class SnackBarWidgets extends StatefulWidget {
  const SnackBarWidgets({super.key});

  @override
  State<SnackBarWidgets> createState() => _SnackBarWidgetsState();
}

class _SnackBarWidgetsState extends State<SnackBarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar"),
        ),
        body: Builder(builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                final message = SnackBar(
                  content: Text("Hello from snackbar"),
                  action: SnackBarAction(
                    label: "Dismiss",
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(message);
              },
              child: const Text('Click'),
            ),
          );
        }));
  }
}
