import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      "About Me".text.xl6.bold.make(),
      "Get to know me :)".text.make(),
      const Gap(50),
      [
        VxBox().color(Colors.red).height(500).width(400).make(),
        const Gap(100),
        [
          "Who am I?".text.red200.xl3.make(),
          "I'm Kiran kamal ,a Flutter developer,Ui designer"
              .text
              .xl4
              .bold
              .make()
              .pSymmetric(v: 9),
          "I'm a B-Tech graduate with Infomation Technology. I have been developing mobile apps for over 1.8 years now"
              .text
              .xl2
              .make()
              .box
              .height(200)
              .make()
              .flexible(),
          const Divider(
            color: Colors.black,
          ),
          [
            "Technologies I have worked with : ".text.color(Colors.red).make(),
            [
              "Flutter".text.bold.make(),
              "Dart".text.bold.make(),
              "Python".text.bold.make(),
              "Javascript".text.bold.make(),
              "git".text.bold.make(),
            ]
                .hStack(alignment: MainAxisAlignment.spaceBetween)
                .pSymmetric(v: 7),
          ].vStack(crossAlignment: CrossAxisAlignment.start).pSymmetric(v: 3),
          const Divider(
            color: Colors.black,
          ),
          const Gap(30),
          [
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Name :",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " Kiran Kamal",
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Email :",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Kirankamal45@gmail.com",
                    style: TextStyle(),
                  )
                ],
              ),
            )
          ].hStack(alignment: MainAxisAlignment.spaceBetween),
          const Gap(20),
          [
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Age :",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " 24",
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            const Gap(30),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "From :",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Pathanamthitta,kerala",
                    style: TextStyle(),
                  )
                ],
              ),
            )
          ].hStack(alignment: MainAxisAlignment.spaceBetween)
        ]
            .vStack(
                crossAlignment: CrossAxisAlignment.start,
                alignment: MainAxisAlignment.start)
            .p(20)
            .box
            .height(500)
            .width(750)
            .make()
            .flexible()
      ]
          .hStack(
            crossAlignment: CrossAxisAlignment.start,
          )
          .pSymmetric(h: 180)
    ].vStack();
  }
}
