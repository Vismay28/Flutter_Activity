import 'package:flutter/material.dart';
import 'package:untitled/events.dart';
import 'package:untitled/feedback.dart';
import 'package:untitled/gallery.dart';
import 'package:untitled/login.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Login(),
    );
  }
}

