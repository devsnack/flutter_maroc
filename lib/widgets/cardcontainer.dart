import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/constant.dart';
import 'package:maroc_app/widgets/default.dart';
import 'package:maroc_app/widgets/profile.dart';
import 'package:maroc_app/widgets/profile2.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(20, 174, 176, 1),
              PRIMARY,
              PRIMARY,
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          )),
      child: Column(
        children: [
          Row(
            children: [
              Profile2(),
              SizedBox(width: 10),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "dr.achraf sadiq".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Text(
                        "General Medcine  Specialis".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "description Medecin".toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Text(
                        "4.7",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    '60S',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //////////////////////////////////////:  second text
          Row(
            children: [
              Expanded(
                  flex: 4,
                  child: btn1(
                      text: "edit my appoitment",
                      color: Colors.white,
                      txtcolor: PRIMARY)),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "date and time".toUpperCase(),
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "Monday,november 07 10:00".toUpperCase(),
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //////////////////////////////////////:  second text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              btn1(
                  text: "delete my appoitment",
                  color: Colors.white,
                  txtcolor: Colors.red),
              btn1(text: "call now", color: Colors.white, txtcolor: PRIMARY),
              btn1(text: "message now", color: Colors.white, txtcolor: PRIMARY)
            ],
          ),
        ],
      ),
    );
  }
}
