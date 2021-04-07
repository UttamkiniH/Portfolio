import 'package:flutter/material.dart';

import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'coolors.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Give me a Wink ! \n ".text.center.white.xl2.make(),
              10.widthBox,
              OutlinedButton.icon(
                icon: Icon(Icons.email_rounded),
                label: Text("huttamkini23@gmail.com"),
                onPressed: () => launchURL(
                    'mailto:<huttamkini23@gmail.com>?subject=<Its a wink>&body=<body>'),
                style: ElevatedButton.styleFrom(
                  //primary: Coolors.myColor,
                  onPrimary: Colors.white,
                  side: BorderSide(width: 2, color: Coolors.accentColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Give me a Wink !"
                  .text
                  .center
                  .white
                  .xl2
                  .semiBold
                  .makeCentered()
                  .box
                  .make(),
              2.widthBox,
              OutlinedButton.icon(
                icon: Icon(Icons.email_rounded),
                label: Text("huttamkini23@gmail.com"),
                onPressed: () => launchURL(
                    'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox'),
                style: ElevatedButton.styleFrom(
                  // primary: Coolors.accentColor,
                  onPrimary: Colors.white,
                  side: BorderSide(width: 2, color: Coolors.accentColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
            alignment: MainAxisAlignment.spaceEvenly,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "You reached at the end ".richText.semiBold.white.withTextSpanChildren(
            ["Exciting Times Ahead".textSpan.gray500.make()]).make(),
        10.heightBox,
        [
          "Built in".text.red400.make(),
          Image.asset('assets/flutter.png',
              height: 30, width: 30, fit: BoxFit.contain),
          2.widthBox,
          "with ".text.red400.make(),
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          ),
          4.widthBox,
          "in India".text.red400.make(),
        ].hStack(crossAlignment: CrossAxisAlignment.center),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}

launchURL(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    throw 'Could not launch $command';
  }
}
