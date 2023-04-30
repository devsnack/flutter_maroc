import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/cardcontainer.dart';
import 'package:maroc_app/widgets/constant.dart';
import 'package:maroc_app/widgets/default.dart';
import 'package:maroc_app/widgets/profile.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        // width: double.infinity,
        // height: 200,
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(20.0),
        //         bottomRight: Radius.circular(20.0))),
        child: Column(
          children: [
            CardContainer(),
            SizedBox(
              height: 20,
            ),
            CardContainer()
          ],
        ));
  }
}
