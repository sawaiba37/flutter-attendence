import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //       centerTitle: true,
        //   title: Text("Login Screen"),
        // ),
        body: (Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(height: size.height * 0.15),
                    // Text(
                    //   "ATTENDENCE APP",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 20,
                    //       color: Colors.blueAccent),
                    // ),
                    SizedBox(height: 0.03),
                    Container(
                      child: Text(
                        "Welcome",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blueAccent),
                      ),
                    ),
                    SizedBox(height: 0.02),
                    Container(
                      margin: EdgeInsets.all(32),
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        "We make you care free of your software challenges...",
                        style:
                            TextStyle(fontSize: 14, color: Colors.blueAccent),
                      ),
                    ),

                    SizedBox(height: 0.02),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/welcome.png")))),

                    SizedBox(
                      height: 0.04,
                      width: 45,
                    ),

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                  child: Text("Get Started",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white)))

                              // child: ElevatedButton(
                              //   style: ButtonStyle(
                              //     shape: MaterialStateProperty.all<
                              //             RoundedRectangleBorder>(
                              //         RoundedRectangleBorder(
                              //             borderRadius: BorderRadius.circular(25.0),
                              //             side: BorderSide(color: Colors.black))),
                              //     backgroundColor:
                              //         MaterialStateProperty.all<Color>(Colors.blue),
                              //   )
                              //   onPressed: () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) {
                              //           return LoginScreen();
                              //         },
                              //       ),
                              //     );
                              //     // Respond to button press
                              //   },
                              //   child: Text(
                              //     'Get Started',
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize: 18,
                              //         wordSpacing: 15),
                              //   ),
                              // ),
                              ),
                        ),
                      ),
                    ),

                    // SizedBox(height: size.height * 0.02),
                    // OutlinedButton(
                    //   style: ButtonStyle(
                    //     shape:
                    //         MaterialStateProperty.all<RoundedRectangleBorder>(
                    //             RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(25.0),
                    //                 side: BorderSide(color: Colors.black))),
                    //     backgroundColor:
                    //         MaterialStateProperty.all<Color>(Colors.blue),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) {
                    //           return LoginScreen();
                    //         },
                    //       ),
                    //     );
                    //     // Respond to button press
                    //   },
                    //   child: Text(
                    //     'SignUp To Create New Account',
                    //     style: TextStyle(
                    //         color: Colors.white, fontSize: 18, wordSpacing: 2),
                    //   ),
                    // )

                    // RoundedButton(
                    //   text: "SIGN UP",

                    //   textColor: Colors.black,
                    //   press: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) {
                    //           return SignUpScreen();
                    //         },
                    //       ),
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
