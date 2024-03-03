import 'package:flutter/material.dart';

class TypographyWidget extends StatefulWidget {
  final String? title;
  final double fs;
  const TypographyWidget({Key? key, this.title = "Flutter", this.fs = 22})
      : super(key: key);

  @override
  State<TypographyWidget> createState() => _TypographyWidgetState();
}

class _TypographyWidgetState extends State<TypographyWidget> {
  @override
  Widget build(BuildContext context) {
    String title = widget.title!;
    double fs = widget.fs;
    return Text(
      title,
      style: TextStyle(fontSize: fs),
    );
  }
}
