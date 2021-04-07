import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/footer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Uttam\nKini H"
        .text
        .white
        .xl5
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
          " -About".text.gray500.semiBold.make(),
          10.heightBox,
          "Hey there ❕ \nI am a student in the light 🌕 and a developer at the night 🌙 \nGithub is my coffee ☕️ \nI'm currently Learning basics in Google cloud ☁️ I like to develop apps 📱 in  flutter and playing with the code 📝  in fundamentals of C and C++. \n ⎋ In my spare time I like to design apps or surfing through the web  to find some amazing tools 🛠.\nHappy coding  💫"
              .text
              .white
              .xl2
              .maxLines(20)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 400),
          20.heightBox,
        ].vStack(),
        OutlinedButton.icon(
          icon: Icon(Icons.eco_sharp),
          label: Text("Check my Resume"),
          onPressed: () => launchURL(
              "https://drive.google.com/file/d/1BbP_N0ebQywhiBsKm3OINWvALO8r-UKo/view?usp=sharing"),
          style: ElevatedButton.styleFrom(
            primary: Coolors.myColor,
            onPrimary: Colors.white,
            side: BorderSide(width: 5.0, color: Coolors.myColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
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
        width: 750,
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
        launch("https://www.linkedin.com/in/uttam-kini/");
      }).make(),
      20.widthBox,
      Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch("https://github.com/UttamkiniH");
      }).make(),
      20.widthBox,
      Icon(AntDesign.twitter, color: Colors.white).mdClick(() {
        launch("https://twitter.com/furore_04");
      }).make(),
      20.widthBox,
      Icon(AntDesign.medium_monogram, color: Colors.white).mdClick(() {
        launch("https://medium.com/@huttamkini23");
      }).make(),
    ].hStack();
  }
}
