import 'package:basketball_counter_app/points_counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

// right now the main file is clean and clear
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointsCounter(),
    );
  }
}
