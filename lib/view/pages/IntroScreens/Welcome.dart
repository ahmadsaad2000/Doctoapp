
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _AuthPageState();
}

class _AuthPageState extends State<Welcome> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      body: Column(
        children: [
          const SizedBox(
            height: 220,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/logo.svg",
                    height: 150,
                    width: 150,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Dactorapp",
                style: TextStyle(
                    color: Color(0xFF004ACB),
                    fontSize: 40,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 2),
              ),
              const Text(
                "Welcome to Dactorapp",
                style: TextStyle(
                    color: Color.fromARGB(255, 127, 144, 148),
                    fontSize: 20,
                    height: 1.7),
              ),
              SizedBox(
                height: 240,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF01BFF3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(340, 60),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/SignUp');
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/SignIn');
                },
                onTapDown: (details) {
                  setState(() {
                    isButtonPressed = true;
                  });
                },
                onTapUp: (details) {
                  setState(() {
                    isButtonPressed = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: isButtonPressed
                            ? Color(0xFF01BFF3)
                            : Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: Color(0xFF01BFF3)),
                      ),
                      constraints: BoxConstraints(minWidth: 340, minHeight: 60),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: isButtonPressed
                                  ? Colors.white
                                  : Color(0xFF01BFF3),
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
