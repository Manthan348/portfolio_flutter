import 'package:c/utilitis/social.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../utilitis/animated_contact.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(
        30.0,
      ),
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/develop.jpg",
                height: 156.0,
              ),
              Text(
                "Manthan",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "I am a App Developer and i am looking for job across india or usa",
                  textAlign: TextAlign.center,
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text(
                      "Full Stack Developer",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text(
                      "App Developer",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              Divider(),
              AnimatedContact(
                
                  iconData: FontAwesomeIcons.github,
                  onTap: () async {
                    await launchUrlString(
                        "https://www.youtube.com/watch?v=I56acG16bSo",
                        mode: LaunchMode.externalApplication);
                  },
                  onPressed: () {},
                  subtitle: "manthan",
                  title: "Github"),
              AnimatedContact(
                  iconData: FontAwesomeIcons.gitlab,
                  onTap: () {},
                  onPressed: () {},
                  subtitle: "@manthanjadav",
                  title: "GitLab"),
              AnimatedContact(
                  iconData: FontAwesomeIcons.linkedinIn,
                  onTap: () {},
                  onPressed: () {},
                  subtitle: "manthanj",
                  title: "LinkedIn"),
            ],
          ),
          Column(
            children: [
              Divider(),
              SocialRow(),
            ],
          )
        ],
      ),
    );
  }
}
