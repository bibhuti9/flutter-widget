import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void getDate() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("From getdata");
    });
    print("After");
  }

  @override
  void initState() {
    super.initState();
    getDate();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: const Text("Goto Home"),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ),
      ),
    );
  }
}
