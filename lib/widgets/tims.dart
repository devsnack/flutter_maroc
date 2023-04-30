import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/constant.dart';
import 'package:maroc_app/widgets/dayt.dart';

class TimeS extends StatefulWidget {
  const TimeS({super.key});

  @override
  State<TimeS> createState() => _TimeSState();
}

class _TimeSState extends State<TimeS> {
  int tag = 0;

  int tag3 = 1;
  List<String> options = [
    '08:00 AM',
    '08:30 AM',
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    'custom',
  ];

  List<String> options3 = [
    '7 Mon',
    '8 Tue',
    '9 WED',
    '10 Thu',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selected time",
              style: style1,
            ),
            ChipsChoice<int>.single(
              placeholderStyle: style1,
              choiceStyle: C2ChipStyle.toned(
                selectedStyle: const C2ChipStyle(
                  overlayColor: Colors.white,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  borderColor: Color.fromRGBO(42, 179, 236, 1),
                  borderWidth: 3,
                  borderStyle: BorderStyle.solid,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              value: tag,
              wrapped: true,
              onChanged: (val) => setState(() => tag = val),
              choiceItems: C2Choice.listFrom<int, String>(
                source: options,
                value: (i, v) => i,
                label: (i, v) => v,
              ),
            ),
            Text(
              "Selected Day",
              style: style1,
            ),
            DayT()
          ],
        ));
  }
}
