import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Welcome');
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 33.0, right: 33.0),
              child: Text(
                "Skip",
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 127, 144, 148)),
              ),
            ),
          )
        ]),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 35.0),
              child: SizedBox(
                child: Image.asset(
                  "assets/images/1.png",
                  fit: BoxFit.cover,
                ),
                width: 230,
                height: 300,
              ),
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Schedule ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'appointments\n',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        height: 2),
                  ),
                  TextSpan(
                    text: 'with expert doctors!',
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
      ],
    );
  }
}
