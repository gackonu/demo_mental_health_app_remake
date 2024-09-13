import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final String title;
  final String subtitle;

  const ExerciseCard(
      {super.key,
      required this.icon,
      required this.backgroundColor,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff101617).withOpacity(0.11),
            blurRadius: 5,
            spreadRadius: 0,
          )
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(8)),
          child: Icon(icon, color: Colors.white,),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
