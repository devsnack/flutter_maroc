import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/constant.dart';
import 'package:maroc_app/widgets/default.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(20, 174, 176, 1),
                Color.fromRGBO(42, 185, 187, 1),
                PRIMARY,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "You Have made \n successfully \nyour appointment",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.check_circle_outline_outlined,
                      color: Colors.white,
                      size: 50,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "check your email adress for  more Details \n About the Appoitment",
                  style: style2,
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Details",
                  style: style3,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor",
                      style: style2,
                    ),
                    Text(
                      "Dr.Achraf sadiq",
                      style: style2,
                    ),
                  ],
                ),
                Divider(
                  height: 15,
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date And Time",
                      style: style2,
                    ),
                    Text(
                      "Monday November 07  10:10",
                      style: style2,
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Speciality",
                      style: style2,
                    ),
                    Text(
                      "General  medcin",
                      style: style2,
                    ),
                  ],
                ),
                Divider(
                  height: 25,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    btn(
                        text: 'Done',
                        color: Colors.white,
                        txtcolor: Colors.black),
                    btn(
                        text: 'My Appointment',
                        color: Colors.white,
                        txtcolor: PRIMARY)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
