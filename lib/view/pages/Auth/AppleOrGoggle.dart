import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppleOrGoggle extends StatefulWidget {
  const AppleOrGoggle({super.key});

  @override
  State<AppleOrGoggle> createState() => _AppleOrGoggleState();
}

class _AppleOrGoggleState extends State<AppleOrGoggle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 90.0,
              ),
              child: SizedBox(
                child: SvgPicture.asset(
                  "assets/images/4.svg",
                  fit: BoxFit.cover,
                ),
                width: 222,
                height: 280,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ready to Explore ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20, left: 32),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF01BFF3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(335, 60),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/HomePage');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue whit emali",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, top: 150, left: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Text(
                      "Or Continue With",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/AppleOrGoggle');
                        },
                        child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey)),
                            height: 75,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/logo-google.svg",
                                    height: 27,
                                    width: 27,
                                  ),
                                  SizedBox(
                                    width: 19,
                                  ),
                                  Text(
                                    "Google",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/AppleOrGoggle');
                      },
                      child: Container(
                          width: 160,
                          height: 73,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Icon(
                                  Icons.apple,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 19,
                              ),
                              Text(
                                "Apple",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
