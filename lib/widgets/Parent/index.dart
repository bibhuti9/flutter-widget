import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Child/index.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ChildWidget());
  }
}
