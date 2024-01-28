import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Cart/index.dart';

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
          const SizedBox(height: 10),
          Row(
            children: [
              TextButton.icon(
                icon: const Icon(Icons.delete_outline),
                label: const Text("Clear"),
                onPressed: () => {},
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () => {Navigator.pushNamed(context, "/cart")},
              child: const Text("Login")),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Make your life easy with busyy. let's use it",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30,
              foreground: Paint()
                ..color = Colors.blue
                ..style = PaintingStyle.stroke,
            ),
          )
        ]),
      ),
    );
  }
}
