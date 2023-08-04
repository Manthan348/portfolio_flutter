import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

class AnimatedIconButtton extends StatefulWidget {
  final IconData iconData;

  final VoidCallback onTap;
  const AnimatedIconButtton({
    Key? key,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedIconButtton> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedIconButtton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        decoration: BoxDecoration(
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          border: Border.all(
            color: isHovering ? Colors.grey : Colors.white,
          ),
        ),
        padding: EdgeInsets.all(
          8.0,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                4.0,
              ),
              child: FaIcon(
                widget.iconData,
                size: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
