import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:maroc_app/widgets/constant.dart';

class Profile2 extends StatelessWidget {
  const Profile2({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvancedAvatar(
      statusColor: SECONDARY,
      // decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
          padding: const EdgeInsets.all(0),
          child: Image(
            width: 60,
            height: 60,
            image: NetworkImage(
                "https://www.vhv.rs/dpng/d/551-5511364_circle-profile-man-hd-png-download.png"),
          )),
      // image: AssetImage(''),
      foregroundDecoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://www.vhv.rs/dpng/d/551-5511364_circle-profile-man-hd-png-download.png"),
        ),
        color: PRIMARY,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
    );
  }
}
