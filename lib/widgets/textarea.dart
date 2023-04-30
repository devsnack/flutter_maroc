import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/constant.dart';

class TArea extends StatelessWidget {
  const TArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What Do you feel",
            style: style1,
          ),
          SizedBox(
              width: 350,
              height: 45,
              child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Message (Optionel)...',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255), width: 5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: PRIMARY),
                    ),
                  ))),
        ],
      ),
    );
  }
}
