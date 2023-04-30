import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget btn({text, color, txtcolor}) => TextButton(
      onPressed: () {},
      child: Text(text, style: TextStyle(color: txtcolor, fontSize: 18)),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15)),
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
    );

Widget btn1({text, color, txtcolor}) => TextButton(
      onPressed: () {},
      child: Text(text, style: TextStyle(color: txtcolor, fontSize: 12)),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
    );
