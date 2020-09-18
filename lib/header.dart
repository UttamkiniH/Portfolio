import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/coolors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Uttam\nKini H"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();

    return SafeArea(
        child: VxBox(
      child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                if (context.isMobile) 50.heightBox else 10.heightBox,
                CustomAppBar().shimmer(
                  showAnimation: true,
                  primaryColor: Coolors.accentColor,
                ),
                30.heightBox,
                nameWidget,
                20.heightBox,
                VxBox()
                    .color(Coolors.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolors.accentColor),
                30.heightBox,
                SocialAccounts(),
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 32,
              ),
              Expanded(
                child: VxResponsive(
                    fallback: const Offstage(),
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60)),
              )
            ],
          ).w(context.screenWidth)
        ]),
      ]),
    )
            .size(context.screenWidth, context.percentHeight * 60)
            .color(Coolors.secondaryColor)
            .make());
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " -  Introdution".text.gray500.sm.make(),
          10.heightBox,
          " @blah mwdi jfjq expert and dead\n public speaker dier facier and blogger kisser"
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 400),
          20.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch("https://www.google.com");
          },
          child: "you are benchod".text.make(),
          color: Coolors.accentColor,
          shape: Vx.roundedSm,
          hoverColor: Vx.purple700,
        ).h(50),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(AntDesign.linkedin_square, color: Colors.white).mdClick(() {
        launch("https://twitter.com/login");
      }).make(),
      20.widthBox,
      Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch("https://twitter.com/login");
      }).make(),
      20.widthBox,
      Icon(AntDesign.twitter, color: Colors.white).mdClick(() {
        launch("https://twitter.com/login");
      }).make(),
      20.widthBox,
      Icon(AntDesign.medium_monogram, color: Colors.white).mdClick(() {
        launch("https://twitter.com/login");
      }).make(),
    ].hStack();
  }
}
