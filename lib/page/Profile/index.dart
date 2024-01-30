import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String image =
      "https://images.pexels.com/photos/16812051/pexels-photo-16812051/free-photo-of-up-and-down.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load";
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
          child: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        children: [
          Image.network(image, fit: BoxFit.fill),
          Image.network(image, fit: BoxFit.fill),
          Image.network(image, fit: BoxFit.fill),
          Image.network(image, fit: BoxFit.fill)
        ],
      )),
    );
  }
}
//https://images.pexels.com/photos/10549472/pexels-photo-10549472.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load