import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/constant.dart';

class DayT extends StatefulWidget {
  const DayT({super.key});

  @override
  State<DayT> createState() => _DayTState();
}

class _DayTState extends State<DayT> {
  List<String> options3 = [
    '7 \nMon',
    '8 \n Tue',
    '9 \n  WED',
    '10 \n Thu',
    '11 \n Fri',
    '12 \n Sat',
  ];
  int checked = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemCount: options3.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                setState(() {
                  checked = index;
                });
              },
              child: Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: index == checked
                          ? Border.all(color: PRIMARY, width: 3)
                          : null,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    textAlign: TextAlign.center,
                    "${options3[index]}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                if (checked == index)
                  Positioned(
                      right: -5,
                      top: -10,
                      child: Image(
                        image: img,
                        width: 20,
                      )),
              ])),
        ),
      ),
    );
  }
}


// InkWell
 // Container 