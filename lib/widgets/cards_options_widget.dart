// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardsOptionsWidget extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color color;

  const CardsOptionsWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(100.0),
          color: color.withOpacity(0.1),
          child: IconButton(
            padding: const EdgeInsets.all(15.0),
            icon: icon,
            color: color,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
