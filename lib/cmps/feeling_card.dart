import 'package:flutter/material.dart';

class FeelingCard extends StatelessWidget {
  final String emoji;
  final String name;
  const FeelingCard({super.key, required this.emoji, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blue[500]),
          child: Center(
            child: Text(
              emoji,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
        const SizedBox(height: 15,),
        Text(name, style: const TextStyle(
          color: Colors.white
        ),)
      ],
    );
  }
}
