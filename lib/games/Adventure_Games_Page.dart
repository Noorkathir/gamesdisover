import 'package:flutter/material.dart';

class AdventureGamesPage extends StatelessWidget {
  const AdventureGamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: const Text("Adventure Games"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/uncharted.jpg",
              
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            const Text(
              " Adventure Games",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
               "Embark on thrilling adventures through exotic lands."
               "Discover hidden treasures and unravel ancient mysteries.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}