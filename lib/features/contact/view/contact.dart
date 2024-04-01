import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/features/contact/view/widgets/custom_contact_card.dart';
import 'package:kiran_portfolio_website/shared/extenstion/fade_extenstion.dart';
import 'package:kiran_portfolio_website/shared/widgets/custom_text_heading.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const CustomSectionHeading(headingName: "Get in Touch"),
      // "Get in Touch"
      //     .text
      //     .xl6
      //     .make()
      //     .fadeInUp(duration: const Duration(milliseconds: 1300), offset: 100),
      VxBox(
          child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          const CustomContactCard(
            icon: Icons.home,
            tittle: "Home",
            subtittle: "Pathanamthitta, Kerala",
          ).fadeInUp(offset: 0),
          const CustomContactCard(
            icon: Icons.phone,
            tittle: "Phone",
            subtittle: "+918113887254",
          ).fadeInUp(offset: 50),
          const CustomContactCard(
            icon: Icons.email,
            tittle: "Email",
            subtittle: "Kirankamal45@gmail.com",
          ).fadeInUp(offset: 100),
        ],
      )).make().pSymmetric(h: 150).pSymmetric(v: 40)
    ].vStack().pSymmetric(v: 20);
  }
}
