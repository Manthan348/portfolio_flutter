import 'package:c/utilitis/social.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade200,
      padding: const EdgeInsets.all(
        20.0,
      ),
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        children: const [
          SocialRow(),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Desi Programmer",
          ),
        ],
      ),
    );
  }
}
