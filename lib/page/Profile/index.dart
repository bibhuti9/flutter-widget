import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    // Use link useEffeect
    // Call any function here as constructor
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Container(
          child: InteractiveViewer(
            child: Image.network(
                "https://images.pexels.com/photos/10549472/pexels-photo-10549472.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load"),
          ),
        ),
      ),
    );
  }
}
//https://images.pexels.com/photos/10549472/pexels-photo-10549472.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load