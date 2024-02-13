import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/features/services/view/widgets/custom_service_card.dart';
import 'package:velocity_x/velocity_x.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      "What I Can do ?".text.xl6.make(),
      VxBox(
        child: const Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            CustomServiceCardCard(
              tittle: "Mobile App Development",
            ),
            CustomServiceCardCard(
              tittle: "UI/UX Designing",
            ),
            CustomServiceCardCard(
              tittle: "Open source - Github",
            ),
            CustomServiceCardCard(
              tittle: "Rapid Prototyping",
            ),
            CustomServiceCardCard(
              tittle: "Rest Apis",
            ),
          ],
        ),
      ).height(600).make().pSymmetric(h: 150).pSymmetric(v: 40)
    ].vStack().pSymmetric(v: 80);
  }
}
