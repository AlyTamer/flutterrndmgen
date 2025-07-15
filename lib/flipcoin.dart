import 'package:flutter/material.dart';
import 'dart:math';

import 'package:rndm_picker/homescreen.dart';

class FlipCoin extends StatefulWidget {
  const FlipCoin({super.key}); // Add constructor with key if you're using const FlipCoin()

  @override
  FlipCoinState createState() => FlipCoinState();
}

class FlipCoinState extends State<FlipCoin> {
  List<String> choice = ["Heads", "Tails"];
  String rtf = "Ready To Flip"; // should be String, not var
  final random = Random(); // use final for better practice

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                rtf,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int randInt = random.nextInt(2); // 0 or 1
                    rtf = choice[randInt];
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: const Icon(Icons.refresh),
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomeScreen()),
                );
              },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)
                ), child: const Icon(Icons.home)
              )
            ],
          ),
        ),
      ),
    );
  }
}
