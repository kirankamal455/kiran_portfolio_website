import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/features/projects/view/widgets/custom_project_card.dart';
import 'package:kiran_portfolio_website/shared/extenstion/fade_extenstion.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      "Projects".text.xl6.make().fadeInUp(),
      "Here are few samples of my previous work :)"
          .text
          .color(Colors.grey)
          .xl2
          .make()
          .fadeInUp(),
      VxBox(
          child: const Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 8.0,
        children: [
          CusotmProjectCard(),
          CusotmProjectCard(),
          CusotmProjectCard(),
          CusotmProjectCard(),
          CusotmProjectCard(),
        ],
      )).height(500).make().pSymmetric(h: 150).pSymmetric(v: 40)
    ].vStack().pSymmetric(v: 20);
  }
}
