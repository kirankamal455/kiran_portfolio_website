import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/core/gen/fonts.gen.dart';
import 'package:kiran_portfolio_website/features/about_me/view/about_me.dart';
import 'package:kiran_portfolio_website/features/contact/view/contact.dart';
import 'package:kiran_portfolio_website/features/footer_section/view/footer_section.dart';
import 'package:kiran_portfolio_website/features/home/view/home.dart';
import 'package:kiran_portfolio_website/features/projects/view/projects.dart';
import 'package:kiran_portfolio_website/features/services/view/services.dart';
import 'package:kiran_portfolio_website/features/talk_with_me/view/talk_with_me_page.dart';
import 'package:kiran_portfolio_website/features/tools_and_tech/view/tools_and_tech.dart';
import 'package:selectable/selectable.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  var homePageKey = GlobalKey();
  var aboutMePageKey = GlobalKey();
  var servicePageKey = GlobalKey();
  var projectPageKey = GlobalKey();
  var contactPageKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(300, 70),
        child: FadeInDown(
          delay: 0.ms,
          duration: const Duration(milliseconds: 1400),
          curves: Curves.easeOut,
          offset: 450,
          globalKey: GlobalKey(),
          child: Container(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "KIRAN",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      fontFamily: FontFamily.agustina,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              homePageKey.currentContext!,
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text("HOME")),
                      const Gap(14),
                      TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              aboutMePageKey.currentContext!,
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text("ABOUT")),
                      const Gap(14),
                      TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              servicePageKey.currentContext!,
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text("SERVICES")),
                      const Gap(14),
                      TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              projectPageKey.currentContext!,
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text("PROJECTS")),
                      const Gap(14),
                      TextButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              contactPageKey.currentContext!,
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text("CONTACTS")),
                      const Gap(14),
                      OutlinedButton(
                          onPressed: () {}, child: const Text("RESUME"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: context.scrollController,
        child: Selectable(
          child: Column(
            children: [
              HomePage(key: homePageKey),
              AboutMePage(key: aboutMePageKey),
              const ToolsAndTech(),
              ServicesPage(key: servicePageKey),
              ProjectsPage(
                key: projectPageKey,
              ),
              ContactPage(
                key: contactPageKey,
              ),
              const TalkWithMePage(),
              const FooterSection()
            ],
          ),
        ),
      ),
    );
  }
}
