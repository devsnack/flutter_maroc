import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/card1.dart';
import 'package:maroc_app/widgets/constant.dart';
import 'package:maroc_app/widgets/dayt.dart';
import 'package:maroc_app/widgets/default.dart';
import 'package:maroc_app/widgets/textarea.dart';
import 'package:maroc_app/widgets/tims.dart';

class Appoitment extends StatefulWidget {
  const Appoitment({super.key});

  @override
  State<Appoitment> createState() => _AppoitmentState();
}

class _AppoitmentState extends State<Appoitment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(253, 243, 241, 241),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(42, 179, 236, 1),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40,
          ),
          onPressed: () {},
        ),
        title: Center(child: Text("new Appointment".toUpperCase())),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderCard(),
            TimeS(),
            TArea(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn(
                    text: "Restore",
                    color: Colors.white,
                    txtcolor: Colors.black),
                btn(text: "Submit", color: PRIMARY, txtcolor: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
