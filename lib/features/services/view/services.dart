import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/features/services/view/widgets/custom_service_card.dart';
import 'package:kiran_portfolio_website/shared/extenstion/fade_extenstion.dart';
import 'package:velocity_x/velocity_x.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      "What I Can do ?".text.xl6.make().fadeInUp(),
      VxBox(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            const CustomServiceCardCard(
              tittle: "Mobile App Development",
            ).fadeInDown(milliseconds: 1000, offset: 100),
            const CustomServiceCardCard(
              tittle: "UI/UX Designing",
            ).fadeInDown(milliseconds: 1000, offset: 100),
            const CustomServiceCardCard(
              tittle: "Open source - Github",
            ).fadeInDown(milliseconds: 1000, offset: 100),
            const CustomServiceCardCard(
              tittle: "Rapid Prototyping",
            ).fadeInDown(milliseconds: 1000, offset: 100),
            const CustomServiceCardCard(
              tittle: "Rest Apis",
            ).fadeInDown(milliseconds: 1000, offset: 100),
          ],
        ),
      ).height(500).make().pSymmetric(h: 150).pSymmetric(v: 40)
    ].vStack().pSymmetric(v: 80);
  }
}
