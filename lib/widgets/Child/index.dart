import 'package:flutter/material.dart';

class ChildWidget extends StatefulWidget {
  final String title;
  final int fs;
  const ChildWidget({Key? key, this.title = "Flutter", this.fs = 30})
      : super(key: key);

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    String title = widget.title;
    int? fs = widget.fs;
    return Scaffold(
        body: SafeArea(
      child: Text('Title: $title',
          style: TextStyle(
            fontSize: fs!.toDouble(),
          )),
    ));
  }
}
