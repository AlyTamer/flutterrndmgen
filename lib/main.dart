import 'package:flutter/material.dart';
import 'package:rndm_picker/testscreen.dart';

import 'homescreen.dart';

void main() {
  runApp(const MyApp ());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: HomeScreen(),
    );
  }
}

