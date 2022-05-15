// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data = {};

  late Timer timer;
  int count = 0;
  _startTimer() {
    count = 1;
    timer = Timer.periodic(Duration(minutes: 1), (_) {
      setState(() {
        data['now'] = data['now'].add(Duration(minutes: 1));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //receiving the data from loading screen
    data =
        data.isEmpty ? ModalRoute.of(context)?.settings.arguments as Map : data;
    if (count == 0) {
      _startTimer();
    }
    // var time = ;

    String bgImage = 'assets/' + data['bgImage'];
    String continent = data['url']
        .toString()
        .substring(0, data['url'].toString().indexOf('/'))
        .toString();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover)),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic popedDataFromChooseLocation = await Navigator.pushNamed(
                        context,
                        '/location'); // push a new screen on top of this screen

                    setState(() {
                      data = popedDataFromChooseLocation;
                    });
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString('location',data['location']);
                    prefs.setString('flag',data['flag']);
                    prefs.setString('url',data['url']);
                    // print(data['location']);
                    // print(data['flag']);
                    // print(data['url']);
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${data['location']}/$continent',
                      style: TextStyle(
                          fontSize: 28, letterSpacing: 2, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  DateFormat.jm().format(data['now']),
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${data['date']}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${data['day']}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
