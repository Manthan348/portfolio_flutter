import 'package:c/utilitis/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButtton(
          iconData: FontAwesomeIcons.facebook,
          onTap: () {},
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButtton(
          iconData: FontAwesomeIcons.instagram,
          onTap: () {},
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButtton(
          iconData: FontAwesomeIcons.twitter,
          onTap: () {},
        ),
      ],
    );
  }
}
