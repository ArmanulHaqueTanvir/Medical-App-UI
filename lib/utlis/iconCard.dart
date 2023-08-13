import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final String title, imagePath;
  const IconCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepPurple.shade50,
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 30),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
