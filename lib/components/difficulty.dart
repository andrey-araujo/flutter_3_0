
import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int dificultyLevel;

  const Difficulty({
    Key? key,
    required this.dificultyLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 1) ? Colors.amber : Colors.amber[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 2) ? Colors.amber : Colors.amber[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 3) ? Colors.amber : Colors.amber[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 4) ? Colors.amber : Colors.amber[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 5) ? Colors.amber : Colors.amber[100],
        ),
      ],
    );
  }
}