import 'package:flutter/material.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/footer.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.myColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "My Projects,\n"
              .richText
              .withTextSpanChildren([
                "Swipe left or right".textSpan.color(Color(0xff00695c)).make(),
              ])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(
            items: [
              ProjectWidget(title: "Git-Workshop").mdClick(() {
                launchURL('https://github.com/UttamkiniH/Git-Workshop');
              }).make(),
              ProjectWidget(title: "RPS game"),
              ProjectWidget(title: "Health Check Up\nApp"),
              ProjectWidget(title: "Portfolio").mdClick(() {
                launchURL('https://github.com/UttamkiniH/Portfolio');
              }).make(),
              ProjectWidget(title: "Noter App"),
              ProjectWidget(title: "Yet to be\nCreated"),
            ],
            height: 170,
            viewportFraction: context.isMobile ? 0.75 : 0.4,
            autoPlay: true,
            autoPlayAnimationDuration: 1.seconds,
          ))
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(color: Coolors.myColor, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
