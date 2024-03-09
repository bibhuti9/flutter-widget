import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatefulWidget {
  const AbsorbPointerWidget({super.key});

  @override
  State<AbsorbPointerWidget> createState() => _AbsorbPointerWidgetState();
}

class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 100.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Save"),
              ),
            ),
            SizedBox(
              width: 100.0,
              child: AbsorbPointer(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Absord pointer"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
