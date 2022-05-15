// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:world_time/screens/home.dart';
import 'package:world_time/screens/choose_location.dart';
import 'package:world_time/screens/loading.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      // initialRoute: '/home', // we are overriding the routes properties

      routes: {
        '/': (context) =>
            Loading(), // context tells where in the widget tree we are.
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation()
      },
    ));
 