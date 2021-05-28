import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/api/api_service.dart';

// import 'package:flutter_application_2/mainpage.dart';
import 'package:flutter_application_2/model/loginmodel.dart';

// import 'package:flutter_application_2/signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameTEC = TextEditingController();
  TextEditingController _passwordTEC = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    // height: 200,
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: AssetImage("assets/images/back.jpg"),
                    //         fit: BoxFit.fill)),
                    // child: Stack(children: <Widget>[
                    //   Positioned(
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text("Login",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ))),

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(color: Colors.white,
                                // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, 1),
                                      blurRadius: 20.0)
                                ]),
                            child: Column(
                              children: [
                                TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    if (value.length > 20) {
                                      return 'Enter correct Password';
                                    }
                                    return null;
                                  },
                                  controller: _usernameTEC,
                                  keyboardType: TextInputType.name,
                                  onSaved: (input) =>
                                      loginRequestModel.username = input,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.verified_user),
                                    border: OutlineInputBorder(),
                                    labelText: "Username",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(color: Colors.white,
                                    // borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(143, 148, 251, 1),
                                          blurRadius: 20.0)
                                    ]),
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  onSaved: (input) =>
                                      loginRequestModel.password = input,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    // if (!RegExp(
                                    //         "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%^&*(),.?:{}|<>]).*")
                                    //     .hasMatch(value)) {
                                    //   return 'Enter correct Password';
                                    // }
                                    return null;
                                  },
                                  controller: _passwordTEC,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    border: OutlineInputBorder(),
                                    labelText: "Password(e.g:Abc@4325)",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Padding(
                //   padding: EdgeInsets.all(30.0),
                //   child: Column(children: <Widget>[
                //     Container(
                //         margin: EdgeInsets.only(top: 60),
                //         padding: EdgeInsets.all(5),
                //         decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(10),
                //             boxShadow: [
                //               BoxShadow(
                //                   color: Color.fromRGBO(143, 148, 251, 1),
                //                   blurRadius: 20.0)
                //             ]),
                //         child: Column(children: <Widget>[
                //           Container(
                //               padding: EdgeInsets.all(8.0),
                //               decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   border: Border(
                //                       bottom: BorderSide(color: Colors.grey[100]))),
                //               child: TextField(
                //                 controller: _usernameTEC,
                //                 keyboardType: TextInputType.name,
                //                 decoration: InputDecoration(
                //                   border: InputBorder.none,
                //                   prefixIcon: Icon(Icons.verified_user),
                //                   hintText: "Username",
                //                 ),
                //               )),
                //           Container(
                //               padding: EdgeInsets.all(8.0),
                //               // decoration: BoxDecoration(
                //               //     color: Colors.white,
                //               //     border:
                //               //         Border(bottom: BorderSide(color: Colors.grey))),

                //               child: TextField(
                //                 controller: _passwordTEC,
                //                 obscureText: true,
                //                 decoration: InputDecoration(
                //                   prefixIcon: Icon(Icons.lock),
                //                   border: InputBorder.none,
                //                   hintText: "Password",
                //                 ),
                //               ))
                //         ])),
                SizedBox(height: 0.02),
                // Container(
                //   child: Padding(
                //       padding: const EdgeInsets.all(10.0),
                //       child: GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => PageScreen()),
                //           );
                //         },
                //         child: Container(
                //             margin: EdgeInsets.all(10),
                //             width: double.infinity,
                //             padding: EdgeInsets.all(20),
                //             decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(30),
                //                 gradient: LinearGradient(colors: [
                //                   Color.fromRGBO(130, 170, 200, 1),
                //                   Color.fromRGBO(130, 170, 200, 6)
                //                 ])),
                //             child: Center(
                //                 child: Text("Login",
                //                     style: TextStyle(color: Colors.white)))),
                //       )),
                // ),

                Container(
                  margin: EdgeInsets.only(top: 0.05),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          // if (_formKey.currentState.validate()) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //       SnackBar(content: Text('Sucessful Login')));

                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => PageScreen()),
                          //   );
                          // } else {
                          //   showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return AlertDialog(
                          //         title: (Text("Invalid")),
                          //         content: Text("Enter valid credentials"),

                          //         //  Stack(children: <Widget>[
                          //         // // Container(
                          //         //     padding: EdgeInsets.all(20),
                          //         //     child: Text(
                          //         //         "Invalid Username and Password",
                          //         //         textAlign: TextAlign.center,
                          //         //         style: TextStyle(
                          //         //             color: Colors.black,
                          //         //             fontSize: 16,
                          //         //             fontWeight: FontWeight.bold)),
                          //         //            )
                          //         // ])
                          //       );
                          //     },
                          //   );
                          // }

                          //No needd/

                          if (validateAndSave()) {
                            print(loginRequestModel.toJson());

                            setState(() {});

                            APIService apiService = new APIService();
                            apiService.login(loginRequestModel).then((value) {
                              if (value != null) {
                                setState(() {});

                                if (value.token.isNotEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text('Sucessful Login')));

                                  // final snackBar = SnackBar(
                                  //     content: Text("Login Successful"));
                                  // scaffoldKey.currentState
                                  //     .showSnackBar(snackBar);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('value.error')));

                                  // final snackBar =
                                  //     SnackBar(content: Text(value.error));
                                  // scaffoldKey.currentState
                                  //     .showSnackBar(snackBar);
                                }
                              }
                            });
                          }

                          var _username = _usernameTEC.text;
                          var _password = _passwordTEC.text;

                          print("Username:" + _username);
                          print("Password:" + _password);
                        },
                        child: Container(
                            margin: EdgeInsets.all(10),
                            width: double.infinity,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(130, 170, 200, 1),
                                  Color.fromRGBO(130, 170, 200, 6)
                                ])),
                            child: Center(
                                child: Text("Login",
                                    style: TextStyle(color: Colors.white)))),
                      )),
                ),

                //no Need//
                // SizedBox(height: 0.05),
                // Center(
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       OutlinedButton(
                //         style: ButtonStyle(
                //           backgroundColor:
                //               MaterialStateProperty.all<Color>(Colors.white),
                //         ),
                //         onPressed: () {
                //           // Navigator.push(
                //           //   context,
                //           //   MaterialPageRoute(
                //           //       builder: (context) => SignupScreen()),
                //           // );
                //           // ); // Respond to button press
                //         },

                //         // Navigator.push(
                //         //   context,
                //         //   MaterialPageRoute(
                //         //       builder: (context) => LoginScreen()),
                //         // ); // Respond to button press

                //         child: Text(
                //           'Dont have an account,Sign up',
                //           style: TextStyle(color: Colors.black),
                //         ),
                //       ),
                //     ],
                //   ),
                // ), // children: <Widget>[
                //   Text("Dont have an account?"),

                //   Text("Sign up",
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold, fontSize: 18))
                // ]),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.only(top: 100),
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logins.png"),
                            fit: BoxFit.fitHeight))),

                // child: Form(
                //   child: Center(
                //     child: SingleChildScrollView(
                //       child: Column(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Container(
                //               height: 400,
                //               decoration: BoxDecoration(
                //                   image: DecorationImage(
                //                       image: AssetImage(
                //                           "assets/images/bluebackground.jpg"),
                //                       fit: BoxFit.fill))),
                //           SizedBox(height: 110),
                //           TextFormField(
                //             controller: _usernameTEC,
                //             keyboardType: TextInputType.name,
                //             decoration: InputDecoration(
                //               prefixIcon: Icon(Icons.verified_user),
                //               border: OutlineInputBorder(),
                //               hintText: "USERNAME",
                //             ),
                //           ),
                //           SizedBox(
                //             height: 20,
                //           ),
                //           Container(
                //             child: TextFormField(
                //               controller: _passwordTEC,
                //               obscureText: true,
                //               decoration: InputDecoration(
                //                 prefixIcon: Icon(Icons.lock),
                //                 border: OutlineInputBorder(),
                //                 hintText: "Password",
                //               ),
                //             ),
                //           ),
                //           SizedBox(height: 30, width: 23),
                //           Padding(
                //             padding: const EdgeInsets.all(15.0),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 ElevatedButton(
                //                   style: ButtonStyle(
                //                     shape: MaterialStateProperty.all<
                //                             RoundedRectangleBorder>(
                //                         RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(25.0),
                //                             side: BorderSide(color: Colors.black))),
                //                     backgroundColor:
                //                         MaterialStateProperty.all<Color>(Colors.blue),
                //                   ),
                //                   onPressed: () {
                //                     Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                           builder: (context) => PageScreen()),
                //                     );

                //                     var _username = _usernameTEC.text;
                //                     var _password = _passwordTEC.text;

                //                     print("Username:" + _username);
                //                     print("Password:" + _password);
                //                   },
                //                   child: Text(
                //                     'Login',
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                       fontSize: 20,
                //                     ),
                //                   ),
                //                 ),
                //                 // SizedBox(width: 18),
                //                 // OutlinedButton(
                //                 //   onPressed: () {},
                //                 //   child: Text(
                //                 //     'SignUp',
                //                 //     style: TextStyle(color: Colors.amber),
                //                 //   ),
                //                 // ),
                //               ],
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
              ],
            ),
          ),
        ));
  }

// }
  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
