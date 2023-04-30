import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/card1.dart';
import 'package:maroc_app/widgets/card2.dart';
import 'package:maroc_app/widgets/constant.dart';
import 'package:maroc_app/widgets/dayt.dart';
import 'package:maroc_app/widgets/default.dart';
import 'package:maroc_app/widgets/search.dart';
import 'package:maroc_app/widgets/textarea.dart';
import 'package:maroc_app/widgets/tims.dart';

class AppoitmentH extends StatefulWidget {
  const AppoitmentH({super.key});

  @override
  State<AppoitmentH> createState() => _AppoitmentHState();
}

class _AppoitmentHState extends State<AppoitmentH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(42, 179, 236, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(42, 179, 236, 1),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.more_outlined,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40,
          ),
          onPressed: () {},
        ),
        title: Center(child: Text("My Appointment".toUpperCase())),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Color.fromARGB(253, 243, 241, 241),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Search(),
                  ItemCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
