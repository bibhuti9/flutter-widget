import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String imageUrl =
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
          child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          return Image.network(imageUrl);
        },
      )),
    );
  }

  Future<dynamic> getData() async {
    String imageUrl =
        "https://images.pexels.com/photos/16812051/pexels-photo-16812051/free-photo-of-up-and-down.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load";
    await Future.delayed(const Duration(seconds: 3));
    return imageUrl;
  }
}
