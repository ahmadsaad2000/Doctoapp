import 'package:doctorapp/view/pages/IntroScreens/IntroPage1.dart';
import 'package:doctorapp/view/pages/IntroScreens/IntroPage2.dart';
import 'package:doctorapp/view/pages/IntroScreens/IntroPage3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OneBordingScreen extends StatefulWidget {
  const OneBordingScreen({super.key});

  @override
  State<OneBordingScreen> createState() => _OneBordingScreenState();
}

class _OneBordingScreenState extends State<OneBordingScreen> {
  PageController controller = PageController();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                setState(() {
                  currentPageIndex = value;
                });
              },
              controller: controller,
              children: const [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.5),
              child: SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                    activeDotColor: Color.fromARGB(255, 181, 218, 238)),
                controller: controller,
                count: 3,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0, left: 30.0),
                  child: GestureDetector(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF01BFF3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: Size(340, 60),
                      ),
                      onPressed: () {
                        if (currentPageIndex == 2) {
                          Navigator.pushNamed(context, '/Welcome');
                        } else {
                          controller.nextPage(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.fastOutSlowIn,
                          );
                        }
                      },
                      child: Text(
                        currentPageIndex == 2 ? "Done" : "Next",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}







