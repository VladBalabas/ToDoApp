import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/Colors.dart';
import 'package:flutter_application_1/pages/mainScreen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: primary,
    
    ),
  initialRoute: '/',
  routes: {
    '/':(context)=> MainScreen(),
    '/todo':(context)=>Home(),
  }
)
);
