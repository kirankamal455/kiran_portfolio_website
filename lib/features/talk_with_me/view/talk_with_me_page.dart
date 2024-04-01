import 'dart:js';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/core/gen/fonts.gen.dart';
import 'package:kiran_portfolio_website/features/talk_with_me/view/widgets/custom_interest_widget.dart';
import 'package:kiran_portfolio_website/shared/extenstion/fade_extenstion.dart';
import 'package:velocity_x/velocity_x.dart';

class TalkWithMePage extends StatelessWidget {
  const TalkWithMePage({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.white,
    ];

    const colorizeTextStyle = TextStyle(
        fontSize: 40,
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.bold);
    return VxBox(
            child: [
      [
        AnimatedTextKit(
          totalRepeatCount: 4,
          animatedTexts: [
            ColorizeAnimatedText(
              'Lets discuss\non something cool together',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ).fadeInUp(),
        // "Let's discuss\non something cool together"
        //     .text
        //     .bold
        //     .white
        //     .size(40)
        //     .fontFamily(FontFamily.poppins)
        //     .make(),
        const Gap(60),
        "I'm interested in..".text.bold.color(context.primaryColor).make(),
        const Gap(20),
        const Wrap(
          runSpacing: 15,
          spacing: 8,
          children: [
            CutomIntresetWidget(intresetName: "Mobile Development"),
            CutomIntresetWidget(intresetName: "Flutter Web"),
            CutomIntresetWidget(intresetName: "Backend Development"),
            CutomIntresetWidget(intresetName: "Portfolio"),
            CutomIntresetWidget(intresetName: "UI/UX"),
            CutomIntresetWidget(intresetName: "Cloud Development")
          ],
        ).w(500).fadeInUp(),
      ]
          .vStack(crossAlignment: CrossAxisAlignment.start)
          .box
          .height(400)
          .width(context.screenWidth * 0.5)
          .make(),
      [
        const Gap(10),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            fillColor: Colors.white,
            filled: true,
            hintText: "Your name",
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 0.6,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: context.primaryColor,
                width: 1.0,
              ),
            ),
          ),
        ),
        const Gap(10),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            fillColor: Colors.white,
            filled: true,
            hintText: "Your email",
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 0.6,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: context.primaryColor,
                width: 1.0,
              ),
            ),
          ),
        ),
        const Gap(10),
        TextField(
          maxLines: 7,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: "Your message",
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 0.6,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: context.primaryColor,
                width: 1.0,
              ),
            ),
          ),
        ),
        const Gap(20),
        ElevatedButton.icon(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(context.primaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 50), // Adjust the height as needed
            ),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.send,
            color: Colors.white,
          ),
          label: const Text("Submit", style: TextStyle(color: Colors.white)),
        )
      ]
          .vStack(crossAlignment: CrossAxisAlignment.stretch)
          .box
          .width(400)
          .make(),
    ]
                .hStack(alignment: MainAxisAlignment.spaceBetween)
                .pSymmetric(h: 60, v: 20))
        .make()
        .box
        .color(const Color(0xffDCCFED))
        .make()
        .w(context.screenWidth * 1)
        .p(8);
  }
}
