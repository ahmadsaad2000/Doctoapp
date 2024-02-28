import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 80, bottom: 180),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 35.0),
            child: SizedBox(
              child: Image.asset(
                "assets/images/2.png",
                fit: BoxFit.cover,
              ),
              width: 222,
              height: 280,
            ),
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: 'Find the best ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'Doctors\n',
                  style: TextStyle(
                      color: Color(0xFF01BFF3),
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      height: 2),
                ),
                TextSpan(
                  text: 'in your vicinity',
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
