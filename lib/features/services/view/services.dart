import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/core/gen/assets.gen.dart';
import 'package:kiran_portfolio_website/features/services/view/widgets/custom_service_card.dart';
import 'package:kiran_portfolio_website/shared/extenstion/fade_extenstion.dart';
import 'package:kiran_portfolio_website/shared/widgets/custom_text_heading.dart';
import 'package:velocity_x/velocity_x.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const CustomSectionHeading(headingName: "What I Can do ?"),
      VxBox(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            CustomServiceCardCard(
              tittle: "Mobile App Development",
              imagePath: MyAssets.images.serviceImages.mobileApp.path,
            ).fadeInUp(offset: 0),
            CustomServiceCardCard(
              tittle: "UI/UX Designing",
              imagePath: MyAssets.images.serviceImages.uiUx.path,
            ).fadeInUp(offset: 50),
            CustomServiceCardCard(
              tittle: "Open source - Github",
              imagePath: MyAssets.images.serviceImages.opensource.path,
            ).fadeInUp(offset: 100),
            CustomServiceCardCard(
              tittle: "Rapid Prototyping",
              imagePath: MyAssets.images.serviceImages.prototyping.path,
            ).fadeInUp(offset: 150),
            CustomServiceCardCard(
              tittle: "Rest Apis",
              imagePath: MyAssets.images.serviceImages.api.path,
            ).fadeInUp(offset: 200),
          ],
        ),
      ).make().pSymmetric(h: 150).pSymmetric(v: 40)
    ].vStack().pSymmetric(v: 80);
  }
}
