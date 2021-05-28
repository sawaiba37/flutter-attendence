// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/login.dart';

// class SignupScreen extends StatefulWidget {
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//             padding: EdgeInsets.all(20),
//             height: MediaQuery.of(context).size.height,
//             width: double.infinity,
//             child: SingleChildScrollView(
//                 child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                     // height: 200,
//                     // decoration: BoxDecoration(
//                     //     image: DecorationImage(
//                     //         image: AssetImage("assets/images/back.jpg"),
//                     //         fit: BoxFit.fill)),
//                     // child: Stack(children: <Widget>[
//                     //
//                     //   Positioned(
//                     //

//                     child: Container(
//                         margin: EdgeInsets.only(top: 10),
//                         child: Center(
//                           child: Text("Sign up",
//                               style: TextStyle(
//                                   color: Colors.blueAccent,
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold)),
//                         ))),
//                 SizedBox(height: 20),
//                 Container(
//                     padding: EdgeInsets.only(top: 120),
//                     height: 150,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/images/logins.png"),
//                             fit: BoxFit.fitHeight))),
//                 Padding(
//                   padding: const EdgeInsets.all(30),
//                   child: Form(
//                     key: _formKey,
//                     child: Container(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.only(top: 10),
//                             padding: EdgeInsets.all(5),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Color.fromRGBO(143, 148, 251, 1),
//                                       blurRadius: 20.0)
//                                 ]),
//                             child: Column(
//                               children: [
//                                 TextFormField(
//                                   validator: (value) {
//                                     if (value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }
//                                     return null;
//                                   },
//                                   keyboardType: TextInputType.name,
//                                   decoration: InputDecoration(
//                                     prefixIcon: Icon(Icons.verified_user),
//                                     border: InputBorder.none,
//                                     hintText: "First name",
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Column(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(top: 10),
//                                 padding: EdgeInsets.all(5),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color:
//                                               Color.fromRGBO(143, 148, 251, 1),
//                                           blurRadius: 20.0)
//                                     ]),
//                                 child: TextFormField(
//                                   validator: (value) {
//                                     if (value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }

//                                     return null;
//                                   },
//                                   keyboardType: TextInputType.name,
//                                   decoration: InputDecoration(
//                                     prefixIcon: Icon(Icons.verified_user),
//                                     border: InputBorder.none,
//                                     hintText: "Last name",
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Column(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(top: 10),
//                                 padding: EdgeInsets.all(5),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color:
//                                               Color.fromRGBO(143, 148, 251, 1),
//                                           blurRadius: 20.0)
//                                     ]),
//                                 child: TextFormField(
//                                   validator: (value) {
//                                     if (value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }
//                                     if (!RegExp(
//                                             "^[a-zA-Z0-9,!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])*")
//                                         .hasMatch(value)) {
//                                       return 'Enter correct Email Address';
//                                     }
//                                     return null;
//                                   },
//                                   keyboardType: TextInputType.emailAddress,
//                                   decoration: InputDecoration(
//                                     prefixIcon: Icon(Icons.email),
//                                     border: InputBorder.none,
//                                     hintText: "Email",
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Column(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(top: 10),
//                                 padding: EdgeInsets.all(5),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color:
//                                               Color.fromRGBO(143, 148, 251, 1),
//                                           blurRadius: 20.0)
//                                     ]),
//                                 child: TextFormField(
//                                   validator: (value) {
//                                     if (value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }
//                                     if (!RegExp(
//                                             "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%^&*(),.?:{}|<>]).*")
//                                         .hasMatch(value)) {
//                                       return 'enter correct password';
//                                     }
//                                     return null;
//                                   },
//                                   obscureText: true,
//                                   decoration: InputDecoration(
//                                     prefixIcon: Icon(Icons.lock),
//                                     border: InputBorder.none,
//                                     hintText: "Password",
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 0.02),
//                           Container(
//                             margin: EdgeInsets.only(top: 0.05),
//                             child: Padding(
//                                 padding: const EdgeInsets.all(20.0),
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     if (_formKey.currentState.validate()) {
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(SnackBar(
//                                               content: Text(
//                                         'Sucessfully Created',
//                                       )));

//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                 LoginScreen()),
//                                       );
//                                     } else {
//                                       // Navigator.push(
//                                       //     context,
//                                       //     MaterialPageRoute(
//                                       //         builder: (context) => WelcomeScreen()));
//                                       // ignore: unused_element
//                                       //
//                                       showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           return AlertDialog(
//                                               content: Stack(children: <Widget>[
//                                             Container(
//                                                 padding: EdgeInsets.all(20),
//                                                 child: Text(
//                                                     "Enter Correct Credentials",
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                         color: Colors.black,
//                                                         fontSize: 20,
//                                                         fontWeight:
//                                                             FontWeight.bold)))
//                                           ]));
//                                         },
//                                       );
//                                     }
//                                   },
//                                   child: Container(
//                                       margin: EdgeInsets.all(10),
//                                       width: double.infinity,
//                                       padding: EdgeInsets.all(20),
//                                       decoration: BoxDecoration(
//                                           color: Colors.blue,
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                           gradient: LinearGradient(colors: [
//                                             Color.fromRGBO(130, 170, 200, 1),
//                                             Color.fromRGBO(130, 170, 200, 6)
//                                           ])),
//                                       child: Center(
//                                           child: Text("Create an Account",
//                                               style: TextStyle(
//                                                   color: Colors.white)))),
//                                 )),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ))));
//   }
// }
