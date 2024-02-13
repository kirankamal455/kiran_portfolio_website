import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/features/contact/view/widgets/custom_contact_card.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      "Get in Touch".text.xl6.make(),
      VxBox(
              child: const Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          CustomContactCard(
            icon: Icons.home,
            tittle: "Home",
            subtittle: "Pathanamthitta, Kerala",
          ),
          CustomContactCard(
            icon: Icons.phone,
            tittle: "Phone",
            subtittle: "+918113887254",
          ),
          CustomContactCard(
            icon: Icons.email,
            tittle: "Email",
            subtittle: "Kirankamal45@gmail.com",
          ),
        ],
      ))
          .height(context.screenHeight * 0.37)
          .make()
          .pSymmetric(h: 150)
          .pSymmetric(v: 40)
    ].vStack().pSymmetric(v: 20);
  }
}
