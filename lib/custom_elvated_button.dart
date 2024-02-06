import 'package:flutter/material.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton({
    super.key,
    required this.txt,
    required this.onpressed,
  });

  final String txt;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
        onPressed: onpressed,
        child: Text(
          txt,
          style: const TextStyle(fontSize: 20),
        ));
  }
}
