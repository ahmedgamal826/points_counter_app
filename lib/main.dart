import 'package:flutter/material.dart';
import 'package:points_counter323/home_page.dart';

void main() {
  runApp(const Points_counter());
}

class Points_counter extends StatelessWidget {
  const Points_counter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
