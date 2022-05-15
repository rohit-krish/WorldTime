// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? storedLocation, storedFlag, storedUrl;

  _getStoredData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    storedLocation = prefs.getString('location');
    storedFlag = prefs.getString('flag');
    storedUrl = prefs.getString('url');
    bool isStored = storedLocation.runtimeType.toString() == 'String' ? true : false;
    if (isStored) {
      _setUpWorldTime(
          location: storedLocation.toString(),
          flag: storedFlag.toString(),
          url: storedUrl.toString());
    } else {
      _setUpWorldTime(
          location: 'India', flag: 'india.png', url: 'Asia/kolkata');
    }
  }

  _setUpWorldTime(
      {required String location,
      required String flag,
      required String url}) async {
    WorldTime instance = WorldTime(location: location, flag: flag, url: url);
    await instance.getTime();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'now': instance.now,
      'bgImage': instance.bgImage,
      'date': instance.date,
      'url': instance.url,
      'day': instance.day
    });
  }


  @override
  void initState() {
    super.initState();
    _getStoredData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 45, 84),
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
