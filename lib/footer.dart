import 'package:flutter/material.dart';

import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
              RaisedButton(
                onPressed: () {
                  launchURL(
                      'mailto:<huttamkini23@gmail.com>?subject=<Its a wink>&body=<body>');
                },
                child: "huttamkini23@gmail.com".text.semiBold.white.make(),
                color: Coolors.accentColor,
                shape: Vx.roundedSm,
                hoverColor: Vx.purple500,
                elevation: 3.0,
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
                  .makeCentered()
                  .box
                  .make(),
              5.widthBox,
              RaisedButton(
                onPressed: () {
                  launchURL('https://www.google.com/intl/en-GB/gmail/about/#');
                },
                child: "huttamkini23@gmail.com".text.semiBold.white.make(),
                color: Coolors.accentColor,
                shape: Vx.roundedSm,
                hoverColor: Vx.purple500,
                elevation: 3.0,
              )
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
          Image.asset('flutter.png',
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
