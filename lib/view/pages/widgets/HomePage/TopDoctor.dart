import 'package:flutter/material.dart';

class TopDoctor extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialization;

  const TopDoctor({
    super.key,
    required this.imagePath,
    required this.doctorName,
    required this.specialization,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 165,
      margin: const EdgeInsets.only(left: 18.0),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 10,
            color: Color.fromARGB(234, 212, 218, 231),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 10),
                  child: Column(
                    children: [
                      Text(
                        doctorName,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, right: 35),
                        child: Text(
                          specialization,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 117, 116, 116),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
