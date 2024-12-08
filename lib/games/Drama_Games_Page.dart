import 'package:flutter/material.dart';

class DramaGamesPage extends StatelessWidget {
  const DramaGamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Drama Games"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/detroit.jpg", 
              width: 200,
              height: 200,
             
            ),
            const SizedBox(height: 16),
            const Text(
              "Drama Games",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Explore a future shaped by your choices."
                "Experience an emotionally charged narrative where humanity and AI collide.",
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