import 'package:first_app/counter_example.dart';
import 'package:first_app/home_page.dart';
import 'package:flutter/material.dart';

import 'dice_game.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: DiceGame(),
    );
  }
}

