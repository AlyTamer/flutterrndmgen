import 'package:flutter/material.dart';
import 'package:rndm_picker/flipcoin.dart';
import 'package:rndm_picker/testscreen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("RNDM PICKER BY ALY",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "Gotham",
        fontSize: 50
      ),
      ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    ElevatedButton(onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FlipCoin()),
                );
              },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)
                ), child: const Text(
                "Coin",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  TestScreen()),
                );
              },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.brown)
                ), child: const Text(
                  "Rndm Picker",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              )
            ],
          )
        ],
      ),
    )
    );
  }
}