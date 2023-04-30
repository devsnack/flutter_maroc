import 'package:flutter/material.dart';
import 'package:maroc_app/histappointment.dart';
import 'package:maroc_app/success.dart';

import 'appointment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.grey),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Success();
    // AppoitmentH();
    // Appoitment();
  }
}
