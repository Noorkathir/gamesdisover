import 'package:flutter/material.dart';
import 'games_page.dart';

int counter = 0;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Games"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                ),
              ),
              const SizedBox(height: 32),
              Text(
                "Hey ${nameController.text}, do you want to discover some games?",
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GamesPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.sentiment_satisfied, color: Color.fromARGB(255, 78, 123, 84)),
                        SizedBox(width: 8),
                        Text("Yes"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        message = "Oh oops ${nameController.text}! Hate to see you leave!";
                      });
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.sentiment_dissatisfied, color: Color.fromARGB(255, 140, 65, 65)),
                        SizedBox(width: 8),
                        Text("No"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: const TextStyle(fontSize: 18, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
