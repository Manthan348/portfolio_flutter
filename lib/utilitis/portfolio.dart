import 'package:c/Components/Education.dart';
import 'package:c/Components/Skills.dart';
import 'package:c/Components/about.dart';
import 'package:c/Components/footer.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;

  final skillKey = GlobalKey();
  final eduKey = GlobalKey();

  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(eduKey.currentContext!);
            },
            child: Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillKey.currentContext!);
            },
            child: Text("Skills")),
      )
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.green.shade200,
        title: Text("Desi Programmer"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                children: [
                  About(),
                  Education(
                    key: eduKey,
                  ),
                ],
              ),
              Skills(
                key: skillKey,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
