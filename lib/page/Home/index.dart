import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const SizedBox(height: 30),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter your Email",
              labelStyle: TextStyle(fontSize: 25),
              label: Text("Email"),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
            ),
          ),
          const SizedBox(height: 30),
          const TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 25),
                hintText: "Enter your Password",
                label: Text("Passowrd"),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue))),
          ),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () => {}, child: const Text("Login"))
        ]),
      ),
    );
  }
}
