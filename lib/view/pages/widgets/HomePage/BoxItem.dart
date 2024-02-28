import 'package:flutter/material.dart';

class BoxItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const BoxItem({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 80,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 1,
            color: Color.fromARGB(234, 209, 213, 219),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 70,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Image.asset(imagePath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}