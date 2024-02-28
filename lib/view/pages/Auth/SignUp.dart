import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isSwitched = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 35.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.person_add_outlined,
                    size: 44,
                    color: Color(
                      0xFF004ACB,
                    ),
                  ),
                  const SizedBox(
                    width: 250,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.grey[700],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Getting Started",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey[800]),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Create an account to continue!",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Email"),
                    const SizedBox(
                      height: 33,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Example@email.com",
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Name"),
                    const SizedBox(
                      height: 33,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter your name",
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Password"),
                    const SizedBox(
                      height: 33,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter your passowrd",
                      prefixIcon: Icon(Icons.lock_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      }),
                  Text(
                    "Remember Me",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 15),
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
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 70),
                child: Row(
                  children: [
                    Text("Already have an account? ",
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey[500])),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/SignIn');
                      },
                      child: Text(" Sign In",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xFF004ACB))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 20),
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
              Row(
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
            ],
          ),
        ),
      ),
      drawer: const Drawer(
          // child: ListView(
          //   children: [
          //     ListTile(
          //       title: Text('عنصر القائمة 1'),
          //       // يمكنك هنا تعريف التصرف الذي يحدث عند النقر على عنصر القائمة
          //     ),
          //     ListTile(
          //       title: Text('عنصر القائمة 2'),
          //       // يمكنك هنا تعريف التصرف الذي يحدث عند النقر على عنصر القائمة
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
