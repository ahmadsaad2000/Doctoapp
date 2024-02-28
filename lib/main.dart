import 'package:doctorapp/view/pages/Auth/AppleOrGoggle.dart';
import 'package:doctorapp/view/pages/Auth/Reset.dart';
import 'package:doctorapp/view/pages/Auth/ForgetPassword.dart';
import 'package:doctorapp/view/pages/Auth/SignIn.dart';
import 'package:doctorapp/view/pages/Auth/SignUp.dart';
import 'package:doctorapp/view/pages/Auth/verify.dart';
import 'package:doctorapp/view/pages/Doctors/DoctorProfile.dart';
import 'package:doctorapp/view/pages/Home/BottomNavBar.dart';
import 'package:doctorapp/view/pages/Home/Favorite.dart';
import 'package:doctorapp/view/pages/Home/HomePage.dart';
import 'package:doctorapp/view/pages/Home/NotificationPage.dart';
import 'package:doctorapp/view/pages/IntroScreens/Welcome.dart';
import 'package:doctorapp/view/pages/IntroScreens/OneBordingScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/OneBordingScreen",
      routes: {
        "/OneBordingScreen": (context) => const OneBordingScreen(),
        "/Welcome": (context) => const Welcome(),
        "/SignUp": (context) => const SignUp(),
        "/SignIn": (context) => const SignIn(),
        "/HomePage": (context) => const HomePage(),
        "/ForgetPassword": (context) => const ForgetPassword(),
        "/Verify": (context) => const Verify(),
        "/Reset": (context) => const Reset(),
        "/AppleOrGoggle": (context) => const AppleOrGoggle(),
        "/Favorite": (context) => const Favorite(),
        "/NotificationPage": (context) => const NotificationPage(),
        "/DoctorProfile": (context) => const DoctorProfile(),
        "/BottomNavBar": (context) => const BottomNavBar(),
      },
    );
  }
}
