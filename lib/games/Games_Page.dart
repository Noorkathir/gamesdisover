import 'package:flutter/material.dart';
import 'Drama_Games_Page.dart';
import 'Adventure_Games_Page.dart';
import 'Horror_Games_Page.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade200,
        title: const Text("Games"),
      ), 
      body: ListView(
        children: [
        
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HorrorGamesPage(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                border: Border.all(
                  color: Colors.black,
                  width: 8,
                ),
              ), 
              child: const Text(
                "Horror Games",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ), 
            ), 
          ), 

        
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DramaGamesPage(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
                border: Border.all(
                  color: Colors.black,
                  width: 8,
                ), 
              ), 
              child: const Text(
                "Drama Games",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ), 
            ), 
          ),

          
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdventureGamesPage(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                border: Border.all(
                  color: Colors.black,
                  width: 8,
                ), 
              ), 
              child: const Text(
                "Adventure Games",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ), 
            ), 
          ), 
        ],
      ), 
    );
  }
}
