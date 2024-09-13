import 'package:flutter/material.dart';

class ConsultantCard extends StatelessWidget {
  final String image;
  final String name;
  final String skill;

  const ConsultantCard(
      {super.key,
      required this.image,
      required this.name,
      required this.skill});

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
          // padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12)
          ),
          child: ClipRect(
              
            child: Image.asset(image),
          ),
        ),
        title: Text(name),
        subtitle: Text(skill),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
