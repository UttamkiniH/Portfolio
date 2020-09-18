import 'package:flutter/material.dart';
import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolors.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project \n lets talk".text.center.white.xl2.make(),
              10.heightBox,
              "mtechrival@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project \n lets talk".text.center.white.xl2.make(),
              10.widthBox,
              "mtechrival@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling".richText.semiBold.white.withTextSpanChildren(
            [" thats all we can do now".textSpan.gray500.make()]).make(),
        10.heightBox,
        [
          "Made in india".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
