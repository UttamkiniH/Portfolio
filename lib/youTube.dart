import 'package:portfolio/footer.dart';

import 'coolors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';

class YouActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: VStack([
        HStack(
          [
            100.heightBox,
            "Sneak Peak".text.semiBold.white.xl5.make().p12(),
            5.heightBox,
            Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.yellowAccent,
              size: 40,
            ),
          ],
        ).box.makeCentered(),
        20.heightBox,
        VStack(
          [
            VStack(
              [
                "Qwiklabs Profile"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .makeCentered(),
                soscClick(),
                //  5.heightBox,
                /*  Image.asset(
                  'sosc.png',
                  fit: BoxFit.contain,
                  width: 100,
                  height: 100,
                ).centered(),*/
                //10.heightBox,
                "#loveQwiklabs".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(500)
                .height(300)
                .roundedLg
                .shadowSm
                .gradientFromTo(from: Colors.tealAccent, to: Coolors.myColor)
                .make(),
            20.heightBox,
            VStack(
              [
                "Android StudyJam Sessions"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .makeCentered(),
                dscClick(),
                // 30.heightBox,
                /*    Image.asset(
                  'assets/gdgd.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ).centered(),*/
                //25.heightBox,
                "#loveAndroid".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(500)
                .height(300)
                .roundedLg
                .shadowSm
                .gradientFromTo(from: Coolors.myColor, to: Colors.teal)
                .make()
          ],
          crossAlignment: CrossAxisAlignment.center,
        )
      ]),
      /* Web starts from here */
      web: VStack([
        HStack([
          250.widthBox,
          "Sneak peek".text.semiBold.white.xl5.makeCentered().p12(),
          5.widthBox,
          Icon(
            Icons.emoji_emotions_outlined,
            color: Colors.yellowAccent,
            size: 40,
          ),
        ]),
        20.heightBox,
        HStack(
          [
            VStack(
              [
                "Qwiklabs Profile"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .makeCentered(),
                soscClick(),
                //  5.heightBox,
                /*  Image.asset(
                  'sosc.png',
                  fit: BoxFit.contain,
                  width: 100,
                  height: 100,
                ).centered(),*/
                //10.heightBox,
                "#loveQwiklabs".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(500)
                .height(300)
                .roundedLg
                .shadowSm
                .gradientFromTo(from: Colors.tealAccent, to: Coolors.myColor)
                .make(),
            20.widthBox,
            VStack(
              [
                "Android StudyJam Sessions"
                    .text
                    .semiBold
                    .white
                    .xl2
                    .center
                    .makeCentered(),
                dscClick(),
                // 30.heightBox,
                /*    Image.asset(
                  'assets/gdgd.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ).centered(),*/
                //25.heightBox,
                "#loveAndroid".text.semiBold.xl2.white.makeCentered()
              ],
              alignment: MainAxisAlignment.spaceEvenly,
            )
                .box
                .p24
                .width(500)
                .height(300)
                .roundedLg
                .shadowSm
                .gradientFromTo(from: Coolors.myColor, to: Colors.teal)
                .make(),
            20.widthBox,
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
          launchURL(
              'https://google.qwiklabs.com/public_profiles/aa1871bd-1ecf-4ac4-8ccc-f2f86ff98abe');
        },
        child: (Image.asset(
          'assets/qwiklabs_logo.png',
          fit: BoxFit.contain,
          width: 250,
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
              'https://youtube.com/playlist?list=PLGZOWKOb1z1NgOMhGnesHsfOZCVBOu45W');
        },
        child: (Image.asset(
          'assets/an96.png',
          fit: BoxFit.contain,
          width: 100,
          height: 100,
        ).centered()));
  }
}
