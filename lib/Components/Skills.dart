import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "My skills",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(28.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Programming Language",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Dart",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                  Chip(
                    label: Text(
                      "C++",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                  Chip(
                    label: Text(
                      "JavScript",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(28.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Frameworks",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Flutter",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                  Chip(
                    label: Text(
                      "JavaScript",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                  Chip(
                    label: Text(
                      "Django",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(28.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                " Other Tools",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Dart",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                  Chip(
                    label: Text(
                      "C++",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                  Chip(
                    label: Text(
                      "JavScript",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
