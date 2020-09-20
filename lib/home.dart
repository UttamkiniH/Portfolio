import 'package:flutter/material.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/tool.dart';
import 'package:velocity_x/velocity_x.dart';
import 'clubs.dart';
import 'footer.dart';
import 'middle.dart';
import 'header.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        ToolScreen(),
        ClubActivity(),
        40.heightBox,
        FooterScreen()
      ]).scrollVertical(),
    );
  }
}
