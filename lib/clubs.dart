import 'package:portfolio/footer.dart';

import 'coolors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
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
                "Google Developer Student Clubs".text.semiBold.white.xl2.center.make(),
                // 30.heightBox,
                dscClick(),
                /*   Image.asset(
                  'assets/gdgd.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ).centered(),*/
                //25.heightBox,
                "Community Lead".text.semiBold.xl2.white.makeCentered(),
                "2020-Present".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(300)
                .height(400)
                .roundedLg
                .shadowSm
                .neumorphic(color: Coolors.primaryColor, curve: VxCurve.concave)
                .makeCentered(),
            20.heightBox,
            VStack(
              [
                "Sahyadri Open Source Community"
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
                "Core Member".text.semiBold.xl2.white.makeCentered(),
                "2020-Present".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(300)
                .height(400)
                .roundedLg
                .shadowSm
                .neumorphic(color: Coolors.primaryColor, curve: VxCurve.concave)
                .make(),
            20.heightBox,
            
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
                "Technical Head".text.semiBold.xl2.white.makeCentered(),
                "2019-Present".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(300)
                .height(400)
                .roundedLg
                .shadowSm
                .neumorphic(color: Coolors.primaryColor, curve: VxCurve.concave)
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
                "Google Developer Student Clubs".text.semiBold.white.xl2.center.make(),
                dscClick(),
                // 30.heightBox,
                /*    Image.asset(
                  'assets/gdgd.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ).centered(),*/
                //25.heightBox,
                "Community Lead".text.semiBold.xl2.white.makeCentered(),
                "2020-Present".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(300)
                .height(400)
                .roundedLg
                .shadowSm
                .neumorphic(color: Coolors.primaryColor, curve: VxCurve.concave)
                .make(),
            20.widthBox,
            VStack(
              [
                "Sahyadri Open Source Community"
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
                "Core Member".text.semiBold.xl2.white.makeCentered(),
                "2020-Present".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(300)
                .height(400)
                .roundedLg
                .shadowSm
                .neumorphic(color: Coolors.primaryColor, curve: VxCurve.concave)
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
                "Technical Head".text.semiBold.xl2.white.makeCentered(),
                "2019-Present".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(300)
                .height(400)
                .roundedLg
                .shadowSm
                .neumorphic(color: Coolors.primaryColor, curve: VxCurve.concave)
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
          'assets/sosc.png',
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
              'https://gdsc.community.dev/sahyadri-college-of-engineering-management-mangaluru/');
        },
        child: (Image.asset(
          'assets/gdgd.png',
          fit: BoxFit.contain,
          width: 100,
          height: 100,
        ).centered()));
  }
}

// ignore: camel_case_types
class acmClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          launchURL('https://sahyadri.acm.org/assets/team.html');
        },
        child: (Image.asset(
          'assets/ACM.png',
          fit: BoxFit.contain,
          width: 200,
        ).centered()));
  }
}
