import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_application_2/login.dart';

class PageScreen extends StatefulWidget {
  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  String now = DateFormat("dd-MM-yyyy").format(DateTime.now());
  TimeOfDay _time = TimeOfDay(hour: 00, minute: 00);
  TimeOfDay _time2 = TimeOfDay(hour: 00, minute: 00);
  void _selectTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  void _selectYourTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: _time2,
    );
    if (newTime != null) {
      setState(() {
        _time2 = newTime;
      });
    }
  }

  // DateTime time;

  // final timein = TextEditingController();
  // final timeout = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Attendance'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Welcome User",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                  // CircleAvatar(
                  //   radius: 60,
                  //   backgroundImage: AssetImage("assets/images/snapchat.png"),
                  // ),
                  SizedBox(height: 20),

                  Center(
                    child: Container(
                      margin: EdgeInsets.all(30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Container(
                          //   child: Text(
                          //     'Selected time: ${_time.format(context)}',
                          //   ),
                          // ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: _selectTime,
                            //  => setState(
                            // //   () {
                            // //     time = DateTime.now();
                            // //     timein.text = '$time';
                            // //   },
                            // // ),

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LoginScreen()),
                            // ); // Respond to button press

                            child: Text(
                              'Time In',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 15),
                          // Container(
                          //   child: Text(
                          //     // 'Selected time: ${_time2.format(context)}',
                          //   ),
                          // ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            onPressed: _selectYourTime,

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => SignupScreen()),
                            // );
                            // Respond to button press

                            child: Text(
                              'Time Out',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.all(30),
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text('Date',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Time In',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Time Out',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              '${(DateFormat("dd-MM-yyyy").format(DateTime.now()))}')),
                          DataCell(Text('${_time.format(context)}')),
                          DataCell(Text('${_time2.format(context)}')),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
