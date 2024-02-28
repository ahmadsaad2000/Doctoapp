import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 80, bottom: 206),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 35.0),
            child: SizedBox(
              child: Image.asset(
                "assets/images/3.png",
                fit: BoxFit.cover,
              ),
              width: 320,
              height: 280,
            ),
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: 'Book ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'face-to-face\n',
                  style: TextStyle(
                      color: Color.fromARGB(255, 202, 210, 197),
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      height: 2),
                ),
                TextSpan(
                  text: 'Appointment!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
