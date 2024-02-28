import 'package:flutter/material.dart';

Widget customStack(String imagePath, Color bgColor, double leftMargin) {
  return Stack(
    children: [
      Container(
        width: 300,
        height: 200,
        margin: EdgeInsets.only(left: leftMargin), // Add margin for spacing
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain, // Use BoxFit.cover for circular image
          ),
        ),
      ),
      Container(
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  "BOOK NOW  ",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(14)),
        width: 106,
        height: 30.0,
        margin: EdgeInsets.only(left: leftMargin + 19.4, top: 130.2),
        // Adjust the left margin accordingly
      ),
    ],
  );
}
