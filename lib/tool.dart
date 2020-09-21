import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'coolors.dart';

class ToolScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: VStack(
        [
          "Langauages and Tools I Work On :"
              .text
              .semiBold
              .white
              .xl4
              .make()
              .box
              .p12
              .alignCenter
              .make(),
          HStack([
            Image.asset("assets/android.png", fit: BoxFit.contain).px1().py12(),
            Image.asset("assets/c-programming.png", fit: BoxFit.cover)
                .px1()
                .py12(),
            Image.asset("assets/C++-programming.png", fit: BoxFit.cover)
                .px1()
                .py12(),
          ]).shimmer(),
          HStack([
            Image.asset("assets/cloud-engine.png", fit: BoxFit.cover)
                .px1()
                .py12(),
            Image.asset("assets/flutter.png", fit: BoxFit.cover).px1().py12(),
            Image.asset("assets/github.png", fit: BoxFit.cover).px1().py12(),
          ]),
          Image.asset("assets/visual-studio.png", fit: BoxFit.cover)
              .px1()
              .py12(),
        ],
        crossAlignment: CrossAxisAlignment.start,
      )
          .box
          .p16
          .roundedLg
          .margin(Vx.m64)
          .neumorphic(
              color: Coolors.primaryColor, curve: VxCurve.convex, elevation: 8)
          .makeCentered(),
      web: HStack([
        "Langauages and Tools I Work On :"
            .text
            .semiBold
            .white
            .xl4
            .make()
            .box
            .p12
            .alignCenter
            .make(),
        60.widthBox,
        Image.asset("assets/android.png", fit: BoxFit.contain).box.p12.make(),
        10.widthBox,
        Image.asset("assets/c-programming.png", fit: BoxFit.contain)
            .box
            .p12
            .make(),
        10.widthBox,
        Image.asset("assets/C++-programming.png", fit: BoxFit.contain)
            .box
            .p12
            .make(),
        10.widthBox,
        Image.asset("assets/cloud-engine.png", fit: BoxFit.contain)
            .box
            .p12
            .make(),
        10.widthBox,
        Image.asset("assets/flutter.png", fit: BoxFit.contain).box.p12.make(),
        10.widthBox,
        Image.asset("assets/github.png", fit: BoxFit.contain).box.p12.make(),
        10.widthBox,
        Image.asset("assets/visual-studio.png", fit: BoxFit.contain)
            .box
            .p12
            .make(),
      ])
          .box
          .p16
          .roundedLg
          .margin(Vx.m64)
          .neumorphic(
              color: Coolors.primaryColor, curve: VxCurve.concave, elevation: 8)
          .makeCentered(),
    );
  }
}
