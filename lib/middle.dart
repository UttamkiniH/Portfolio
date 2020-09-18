import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All Creative Works,\n"
              .richText
              .withTextSpanChildren([
                "Selected Projects.".textSpan.yellow400.make(),
              ])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(
            items: [
              ProjectWidget(title: "Front Wallet"),
              ProjectWidget(title: "Front Wallet2"),
              ProjectWidget(title: "Front Wallet3"),
              ProjectWidget(title: "Front Wallet4"),
              ProjectWidget(title: "Front Wallet5"),
              ProjectWidget(title: "Front Wallet6"),
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
        .neumorphic(color: Vx.purple700, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
