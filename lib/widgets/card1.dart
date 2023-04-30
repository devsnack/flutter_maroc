import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maroc_app/widgets/constant.dart';
import 'package:maroc_app/widgets/profile.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: Color.fromRGBO(42, 179, 236, 1),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            )),
        child: Column(
          children: [
            Row(
              children: [
                Profile(),
                SizedBox(width: 10),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "dr.achraf sadiq".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Image(
                                width: 30,
                                image: NetworkImage(
                                    "https://www.pngitem.com/pimgs/m/302-3024199_instagram-verified-symbol-png-instagram-verified-logo-png.png")),
                          ],
                        ),
                        Text(
                          "General Medcine  Specialis".toUpperCase(),
                        ),
                      ],
                    )),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: PRIMARY,
                    ),
                    Text(
                      "4.7",
                      style: TextStyle(color: PRIMARY),
                    ),
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
                    flex: 2,
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text: 'Experince   ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: PRIMARY),
                          children: <TextSpan>[
                            TextSpan(
                              text: '6 years+',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ]),
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "dr.achraf sadiq".toUpperCase(),
                        ),
                        Text(
                          "General Medcine  Specialis".toUpperCase(),
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
              children: [
                Expanded(
                    flex: 2,
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text: 'Patient         ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: PRIMARY),
                          children: <TextSpan>[
                            TextSpan(
                              text: '120+',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ]),
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "dr.achraf sadiq".toUpperCase(),
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          "General Medcine  Specialis".toUpperCase(),
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
