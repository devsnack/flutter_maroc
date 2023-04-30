import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:maroc_app/widgets/constant.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvancedAvatar(
      statusColor: SECONDARY,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image(
            image: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/002/002/403/original/man-with-beard-avatar-character-isolated-icon-free-vector.jpg"),
          )),
      // image: AssetImage(''),
      foregroundDecoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: PRIMARY,
          width: 2.0,
        ),
      ),
    );
  }
}
