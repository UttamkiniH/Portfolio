import 'package:portfolio/footer.dart';

import 'coolors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ClubActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: VStack([
        HStack(
          [
            100.heightBox,
            "I am Part of ".text.semiBold.white.xl5.make().p12(),
            5.heightBox,
            Icon(
              AntDesign.pushpin,
              color: Colors.redAccent,
            ),
          ],
        ).box.makeCentered(),
        20.heightBox,
        VStack(
          [
            VStack(
              [
                "Sahyari Open Source Community"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .make(),
                //  5.heightBox,
                soscClick(),
                /*  Image.asset(
                  'sosc.png',
                  fit: BoxFit.contain,
                  width: 100,
                  height: 100,
                ).centered(),*/

                //10.heightBox,
                "2020".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(250)
                .height(300)
                .roundedLg
                .shadowLg
                .neumorphic(
                    color: Coolors.secondaryColor, curve: VxCurve.concave)
                .color(Coolors.secondaryColor)
                .make(),
            20.heightBox,
            VStack(
              [
                "Developers Student Club".text.semiBold.white.xl2.center.make(),
                // 30.heightBox,
                dscClick(),
                /*   Image.asset(
                  'assets/gdgd.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ).centered(),*/
                //25.heightBox,
                "2020".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(250)
                .height(300)
                .roundedLg
                .shadowLg
                .neumorphic(
                    color: Coolors.secondaryColor, curve: VxCurve.concave)
                .color(Coolors.secondaryColor)
                .makeCentered(),
            10.heightBox,
            VStack(
              [
                "ACM Sahyadri\nChapter"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .makeCentered(),
                acmClick(),
                // 25.heightBox,
                /*  Image.asset(
                  'acm.png',
                  fit: BoxFit.contain,
                ).centered(),*/
                // 10.heightBox,
                "2019".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(250)
                .height(300)
                .roundedLg
                .shadowLg
                .neumorphic(
                    color: Coolors.secondaryColor, curve: VxCurve.concave)
                .color(Coolors.secondaryColor)
                .make(),
          ],
          crossAlignment: CrossAxisAlignment.center,
        )
      ]),
      /* Web starts from here */
      web: VStack([
        HStack([
          250.widthBox,
          "I am Part of ".text.semiBold.white.xl5.makeCentered().p12(),
          5.widthBox,
          Icon(
            AntDesign.pushpin,
            color: Colors.redAccent,
          ),
        ]),
        20.heightBox,
        HStack(
          [
            VStack(
              [
                "Sahyari Open Source Community"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .make(),
                soscClick(),
                //  5.heightBox,
                /*  Image.asset(
                  'sosc.png',
                  fit: BoxFit.contain,
                  width: 100,
                  height: 100,
                ).centered(),*/
                //10.heightBox,
                "2020".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(250)
                .height(300)
                .roundedLg
                .shadowLg
                .neumorphic(
                    color: Coolors.secondaryColor, curve: VxCurve.concave)
                .color(Coolors.secondaryColor)
                .make(),
            20.widthBox,
            VStack(
              [
                "Developers Student Club".text.semiBold.white.xl2.center.make(),
                dscClick(),
                // 30.heightBox,
                /*    Image.asset(
                  'assets/gdgd.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ).centered(),*/
                //25.heightBox,
                "2020".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(250)
                .height(300)
                .roundedLg
                .shadowLg
                .neumorphic(
                    color: Coolors.secondaryColor, curve: VxCurve.concave)
                .color(Coolors.secondaryColor)
                .make(),
            20.widthBox,
            VStack(
              [
                "ACM Sahyadri\nChapter"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .makeCentered(),
                acmClick(),
                // 25.heightBox,
                /*    Image.asset(
                  'acm.png',
                  fit: BoxFit.contain,
                ).centered(),*/
                // 10.heightBox,
                "2019".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(250)
                .height(300)
                .roundedLg
                .shadowLg
                .neumorphic(
                    color: Coolors.secondaryColor, curve: VxCurve.concave)
                .color(Coolors.secondaryColor)
                .make()
          ],
          alignment: MainAxisAlignment.spaceAround,
        ).box.makeCentered()
      ]),
    );
  }
}

// ignore: camel_case_types
class soscClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          launchURL('https://sosc.org.in/team');
        },
        child: (Image.asset(
          'sosc.png',
          fit: BoxFit.contain,
          width: 100,
          height: 100,
        ).centered()));
  }
}

// ignore: camel_case_types
class dscClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          launchURL(
              'https://dsc.community.dev/sahyadri-college-of-engineering-management/');
        },
        child: (Image.asset(
          'gdgd.png',
          fit: BoxFit.contain,
          width: 100,
          height: 100,
        ).centered()));
  }
}

class acmClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          launchURL('https://sahyadri.acm.org/assets/team.html');
        },
        child: (Image.asset(
          'acm.png',
          fit: BoxFit.contain,
        ).centered()));
  }
}
