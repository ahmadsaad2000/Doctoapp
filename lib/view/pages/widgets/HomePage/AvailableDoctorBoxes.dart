import 'package:flutter/material.dart';

class AvailableDoctorBoxes extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String qualifications;
  final double rating;
  final int ratingCount;
  final String experience;
  final double price;

  AvailableDoctorBoxes({
    required this.imagePath,
    required this.doctorName,
    required this.qualifications,
    required this.rating,
    required this.ratingCount,
    required this.experience,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            Expanded(
              flex: 38,
              child: Container(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 50,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 15),
                  child: Column(
                    children: [
                      Text(
                        doctorName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, right: 50),
                        child: Text(
                          qualifications,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 117, 116, 116),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, left: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              rating.toStringAsFixed(1) +
                                  ' (${ratingCount.toString()})',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 117, 116, 116),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, left: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.medical_services_outlined,
                              size: 15,
                              color: Color.fromARGB(255, 69, 79, 216),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              experience,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 117, 116, 116),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10),
                        child: Row(
                          children: [
                            Text(
                              '\$${price.toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Inc.VAT',
                              style: TextStyle(
                                color: Color.fromARGB(255, 117, 116, 116),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 23,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 11.0, top: 4),
                  child: Row(
                    children: [
                      Text(
                        'SEE DOCTOR NOW   ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.videocam_outlined,
                        size: 26,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                color: Color(0xFF004ACB),
              ),
            )
          ],
        ),
      ),
      width: 153,
      height: 260,
      margin: EdgeInsets.only(left: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 10,
            color: Color.fromARGB(234, 212, 218, 231),
          ),
        ],
      ),
    );
  }
}
