import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/core/gen/assets.gen.dart';
import 'package:kiran_portfolio_website/core/gen/fonts.gen.dart';
import 'package:kiran_portfolio_website/shared/extenstion/fade_extenstion.dart';
import 'package:kiran_portfolio_website/shared/widgets/custom_text_heading.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const CustomSectionHeading(headingName: "About Me"),
      const Gap(50),
      [
        FadeInLeft(
          delay: 0.ms,
          duration: const Duration(milliseconds: 1400),
          curves: Curves.easeOut,
          offset: 600,
          globalKey: GlobalKey(),
          child: VxBox(
              child: Image.asset(
            MyAssets.images.profileSide.path,
            height: 500,
          )).height(500).width(400).make(),
        ),
        const Gap(100),
        FadeInRight(
                delay: 0.ms,
                duration: const Duration(milliseconds: 1400),
                curves: Curves.easeOut,
                offset: 450,
                globalKey: GlobalKey(),
                child: [
                  "Who am I?".text.xl3.make(),
                  "I'm Kiran kamal ,a Flutter developer,Ui designer"
                      .text
                      .xl4
                      .bold
                      .fontFamily(FontFamily.poppins)
                      .make()
                      .pSymmetric(v: 9),
                  "I'm a B-Tech graduate with Infomation Technology. I have been developing mobile apps for over 1.8 years now \nAs a Flutter developer, I specialize in building cross-platform applications that run smoothly on both Android and iOS devices, leveraging the power of Google's versatile UI toolkit. My expertise extends beyond mere functionality; I thrive on designing visually stunning user interfaces that not only captivate users but also enhance their interaction with the app."
                      .text
                      .xl2
                      .fontFamily(FontFamily.montserrat)
                      .make()
                      .box
                      .make()
                      .flexible(),
                  // const Divider(
                  //   color: Colors.black,
                  // ),
                  // [
                  //   "Technologies I have worked with : "
                  //       .text
                  //       .color(Colors.red)
                  //       .make(),
                  //   [
                  //     "Flutter".text.bold.make(),
                  //     "Dart".text.bold.make(),
                  //     "Python".text.bold.make(),
                  //     "Javascript".text.bold.make(),
                  //     "git".text.bold.make(),
                  //   ]
                  //       .hStack(alignment: MainAxisAlignment.spaceBetween)
                  //       .pSymmetric(v: 7),
                  // ]
                  //     .vStack(crossAlignment: CrossAxisAlignment.start)
                  //     .pSymmetric(v: 3),
                  // const Divider(
                  //   color: Colors.black,
                  // ),
                  const Gap(30),
                  [
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Name :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: FontFamily.montserrat),
                          ),
                          TextSpan(
                            text: " Kiran Kamal",
                            style: TextStyle(fontFamily: FontFamily.montserrat),
                          )
                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Email :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: FontFamily.montserrat),
                          ),
                          TextSpan(
                            text: "Kirankamal45@gmail.com",
                            style: TextStyle(fontFamily: FontFamily.montserrat),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: FontFamily.montserrat),
                          ),
                          TextSpan(
                            text: " 24",
                            style: TextStyle(fontFamily: FontFamily.montserrat),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: FontFamily.montserrat),
                          ),
                          TextSpan(
                            text: "Pathanamthitta,kerala",
                            style: TextStyle(fontFamily: FontFamily.montserrat),
                          )
                        ],
                      ),
                    )
                  ].hStack(alignment: MainAxisAlignment.spaceBetween)
                ].vStack(
                    crossAlignment: CrossAxisAlignment.start,
                    alignment: MainAxisAlignment.start))
            .p(20)
            .box
            .height(500)
            .width(750)
            .make()
            .flexible(),
      ]
          .hStack(
            crossAlignment: CrossAxisAlignment.start,
          )
          .pSymmetric(h: 180)
    ].vStack();
  }
}
