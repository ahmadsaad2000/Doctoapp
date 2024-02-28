import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FocusNode textField1FocusNode = FocusNode();
  FocusNode textField2FocusNode = FocusNode();
  FocusNode textField3FocusNode = FocusNode();
  FocusNode textField4FocusNode = FocusNode();
  FocusNode textField5FocusNode = FocusNode();

  @override
  void dispose() {
    textField1FocusNode.dispose();
    textField2FocusNode.dispose();
    textField3FocusNode.dispose();
    textField4FocusNode.dispose();
    textField5FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
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
                    Icons.mark_chat_read_outlined,
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
                    "Verification Code",
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
                    "Enter The Code We Send You?",
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
              // Padding(
              //   padding: const EdgeInsets.only(right: 30.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       SizedBox(
              //         height: 70,
              //         width: 64,
              //         child: TextFormField(
              //           style: TextStyle(fontSize: 30),
              //           keyboardType: TextInputType.number,
              //           textAlign: TextAlign.center,
              //           inputFormatters: [
              //             LengthLimitingTextInputFormatter(1),
              //             FilteringTextInputFormatter.digitsOnly,
              //           ],
              //           decoration: InputDecoration(
              //               filled: true,
              //               fillColor: Colors.white,
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(10))),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 70,
              //         width: 64,
              //         child: TextFormField(
              //           style: TextStyle(fontSize: 30),
              //           keyboardType: TextInputType.number,
              //           textAlign: TextAlign.center,
              //           inputFormatters: [
              //             LengthLimitingTextInputFormatter(1),
              //             FilteringTextInputFormatter.digitsOnly,
              //           ],
              //           decoration: InputDecoration(
              //               filled: true,
              //               fillColor: Colors.white,
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(10))),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 70,
              //         width: 64,
              //         child: TextFormField(
              //           style: TextStyle(fontSize: 30),
              //           keyboardType: TextInputType.number,
              //           textAlign: TextAlign.center,
              //           inputFormatters: [
              //             LengthLimitingTextInputFormatter(1),
              //             FilteringTextInputFormatter.digitsOnly,
              //           ],
              //           decoration: InputDecoration(
              //               filled: true,
              //               fillColor: Colors.white,
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(10))),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 70,
              //         width: 64,
              //         child: TextFormField(
              //           style: TextStyle(fontSize: 30),
              //           keyboardType: TextInputType.number,
              //           textAlign: TextAlign.center,
              //           inputFormatters: [
              //             LengthLimitingTextInputFormatter(1),
              //             FilteringTextInputFormatter.digitsOnly,
              //           ],
              //           decoration: InputDecoration(
              //               filled: true,
              //               fillColor: Colors.white,
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(10))),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 70,
              //         width: 64,
              //         child: TextFormField(
              //           style: TextStyle(fontSize: 30),
              //           keyboardType: TextInputType.number,
              //           textAlign: TextAlign.center,
              //           inputFormatters: [
              //             LengthLimitingTextInputFormatter(1),
              //             FilteringTextInputFormatter.digitsOnly,
              //           ],
              //           decoration: InputDecoration(
              //               filled: true,
              //               fillColor: Colors.white,
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(10))),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 64,
                      child: TextFormField(
                        focusNode: textField1FocusNode,
                        style: TextStyle(fontSize: 30),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onEditingComplete: () {
                          // Move focus to the next field when editing is complete
                          FocusScope.of(context)
                              .requestFocus(textField2FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 64,
                      child: TextFormField(
                        focusNode: textField2FocusNode,
                        style: TextStyle(fontSize: 30),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onEditingComplete: () {
                          FocusScope.of(context)
                              .requestFocus(textField3FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 64,
                      child: TextFormField(
                        focusNode: textField3FocusNode,
                        style: TextStyle(fontSize: 30),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onEditingComplete: () {
                          FocusScope.of(context)
                              .requestFocus(textField4FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 64,
                      child: TextFormField(
                        focusNode: textField4FocusNode,
                        style: TextStyle(fontSize: 30),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onEditingComplete: () {
                          FocusScope.of(context)
                              .requestFocus(textField5FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 64,
                      child: TextFormField(
                        focusNode: textField5FocusNode,
                        style: TextStyle(fontSize: 30),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        // The last field, no need to move focus further
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 70),
                child: Row(
                  children: [
                    Text("Didn't receive it? ",
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey[500])),
                    InkWell(
                      onTap: () {},
                      child: Text(" Resent Code",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xFF004ACB))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 410,
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
                        Navigator.pushNamed(context, '/Reset');
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
