import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/constant.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 335,
              height: 45,
              child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Appointment',
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
          Container(
            decoration: BoxDecoration(
              color: PRIMARY,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              tooltip: 'Increase volume by 10',
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
