import 'package:doctorapp/view/pages/widgets/HomePage/AvailableDoctorBoxes.dart';
import 'package:doctorapp/view/pages/widgets/HomePage/TopDoctor.dart';
import 'package:doctorapp/view/pages/widgets/HomePage/BoxItem.dart';
import 'package:doctorapp/view/pages/widgets/HomePage/CustomStack.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //!CustomStack "Book Now"
                  Padding(
                    padding: const EdgeInsets.only(top: 155.0),
                    child: SingleChildScrollView(
                      scrollDirection:
                          Axis.horizontal, // Enable horizontal scrolling
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customStack("assets/images/6.png",
                              Color.fromARGB(255, 255, 136, 17), 30.0),
                          customStack("assets/images/7.png",
                              Color.fromRGBO(1, 73, 255, 1), 10.0),
                          customStack("assets/images/8.png",
                              Color.fromRGBO(33, 37, 41, 1), 10.0),
                        ],
                      ),
                    ),
                  ),

                  //!BoxItem
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BoxItem(
                          imagePath: "assets/images/9.png",
                          title: "Doctor",
                        ),
                        BoxItem(
                          imagePath: "assets/images/10.png",
                          title: "Appointment",
                        ),
                        BoxItem(
                          imagePath: "assets/images/11.png",
                          title: "Prescription",
                        ),
                        BoxItem(
                          imagePath: "assets/images/12.png",
                          title: "Medicine",
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 25),
                    child: Row(
                      children: [
                        Text(
                          "Top Doctor",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                  //!Top Doctor
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          TopDoctor(
                            imagePath: "assets/images/13.png",
                            doctorName: "Dr. Taylor Samaro",
                            specialization: "Dental Sargon",
                          ),
                          TopDoctor(
                            imagePath: "assets/images/14.png",
                            doctorName: "Dr. Iker Bureau",
                            specialization: "Dental Sargon",
                          ),
                          TopDoctor(
                            imagePath: "assets/images/15.png",
                            doctorName: "Dr. Edwin Carli",
                            specialization: "Dental Sargon",
                          ),
                          TopDoctor(
                            imagePath: "assets/images/13.png",
                            doctorName: "Dr. Taylor Samaro",
                            specialization: "Dental Sargon",
                          ),
                          TopDoctor(
                            imagePath: "assets/images/15.png",
                            doctorName: "Dr. Edwin Carli",
                            specialization: "Dental Sargon",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 25),
                    child: Row(
                      children: [
                        Text(
                          "Available Doctor",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ),

                  //!AvailableDoctorBoxes
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      children: [
                        AvailableDoctorBoxes(
                          imagePath: 'assets/images/16.png',
                          doctorName: 'Dr. Taylor Samaro',
                          qualifications: 'MBBS, BCS',
                          rating: 4.9,
                          ratingCount: 5380,
                          experience: '4+ Years',
                          price: 199.0,
                        ),
                        const SizedBox(width: 7),
                        AvailableDoctorBoxes(
                          imagePath: 'assets/images/17.png',
                          doctorName: 'Dr. Leabow',
                          qualifications: 'MBBS, BCS',
                          rating: 4.7,
                          ratingCount: 2380,
                          experience: '4+ Years',
                          price: 5000.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      AvailableDoctorBoxes(
                        imagePath: 'assets/images/18.png',
                        doctorName: 'Dr. Cayden Stack',
                        qualifications: 'MBBS, BCS',
                        rating: 4.9,
                        ratingCount: 5380,
                        experience: '4+ Years',
                        price: 0.0,
                      ),
                      SizedBox(width: 7),
                      AvailableDoctorBoxes(
                        imagePath: 'assets/images/19.png',
                        doctorName: 'Dr. Morgan',
                        qualifications: 'MBBS, BCS',
                        rating: 4.9,
                        ratingCount: 5380,
                        experience: '4+ Years',
                        price: 199.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.01, 0.01),
                      blurRadius: 10,
                      color: Color.fromARGB(255, 183, 194, 209)),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 13.0,
                      left: 22.0,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/DoctorProfile');
                            },
                            child: CircleAvatar(
                              child: Image.asset("assets/images/5.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6.0, top: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 137, 94)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Hey, Samantha!",
                                style: TextStyle(color: Color(0xFF004ACB)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/Favorite');
                              },
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Color.fromARGB(255, 10, 20, 167),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/NotificationPage');
                              },
                              child: Icon(
                                Icons.notifications_none_outlined,
                                color: Color.fromARGB(255, 10, 20, 167),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: GestureDetector(
                              onTap: () {
                                _scaffoldKey.currentState?.openDrawer();
                              },
                              child: Icon(
                                Icons.menu,
                                color: Color.fromARGB(255, 10, 20, 167),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: InkWell(
                                    child: Icon(Icons.filter_alt_outlined)),
                                filled: true,
                                fillColor: Color.fromARGB(255, 245, 245, 245),
                                hintText: "Find your suitable doctor!",
                                prefixIcon: Icon(
                                  Icons.search_outlined,
                                  color: Color(0xFF004ACB),
                                  size: 25,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          width: 350,
                          height: 60,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 700.0),
              child: Center(
                  // child: Container(
                  //   decoration: BoxDecoration(
                  //       color: Colors.red,
                  //       borderRadius: BorderRadius.circular(12)),
                  //   width: 350,
                  //   height: 75,
                  // ),
                  ),
            )
          ],
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
      ),
    );
  }
}
