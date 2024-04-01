import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/features/projects/view/widgets/custom_project_card.dart';
import 'package:kiran_portfolio_website/shared/extenstion/fade_extenstion.dart';
import 'package:kiran_portfolio_website/shared/widgets/custom_text_heading.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const CustomSectionHeading(headingName: "Projects"),
      "Here are few samples of my previous work :)"
          .text
          .color(Colors.grey)
          .xl2
          .make()
          .fadeInUp(),
      VxBox(
          child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 8.0,
        children: [
          const CusotmProjectCard(
            projectName: 'Project 1',
            projectDescription: 'Project Description 1',
          ).fadeInUp(offset: 0),
          const CusotmProjectCard(
            projectName: 'Project 2',
            projectDescription: 'Project Description 2',
          ).fadeInUp(offset: 50),
          const CusotmProjectCard(
            projectName: 'Project 3',
            projectDescription: 'Project Description 3',
          ).fadeInUp(offset: 100),
          const CusotmProjectCard(
            projectName: 'Project 4',
            projectDescription: 'Project Description 4',
          ).fadeInUp(offset: 150),
          const CusotmProjectCard(
            projectName: 'Project 5',
            projectDescription: 'Project Description 5',
          ).fadeInUp(offset: 100),
        ],
      )).make().pSymmetric(h: 150).pSymmetric(v: 40)
    ].vStack().pSymmetric(v: 20);
  }
}
