import 'package:flutter/material.dart';
import 'dart:math';

import 'homescreen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  TestScreenState createState() => TestScreenState();
}

class TestScreenState extends State<TestScreen> {
  final TextEditingController _controller = TextEditingController();
  final Random _random = Random();

  List<String> _names = [];
  String _chosenName = '―';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _chosenName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.name,
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter names separated by commas',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _names = _controller.text
                        .split(',')
                        .map((s) => s.trim())
                        .where((s) => s.isNotEmpty)
                        .toList();

                    if (_names.isNotEmpty) {
                      final idx = _random.nextInt(_names.length);
                      _chosenName = _names[idx];
                    } else {
                      _chosenName = 'No names!';
                    }
                  });
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)

                ),
                child: const Text('Pick random'),
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
