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
import 'package:responsive_framework/responsive_framework.dart';
import 'package:selectable/selectable.dart';
import 'dart:html' as html;

import 'dart:typed_data';
import 'package:cross_file/cross_file.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var homePageKey = GlobalKey();
  var aboutMePageKey = GlobalKey();
  var servicePageKey = GlobalKey();
  var projectPageKey = GlobalKey();
  var contactPageKey = GlobalKey();

  downloadFileWeb(String url, String fileName) async {
    final httpsReference = FirebaseStorage.instance.refFromURL(url);

    try {
      const oneMegabyte = 1024 * 1024;
      final Uint8List? data = await httpsReference.getData(oneMegabyte);
      print("data is $data");
      // Data for "images/island.jpg" is returned, use this as needed.
      // XFile.fromData(data!,
      //         mimeType: "application/octet-stream", name: "$fileName.pdf")
      //     .saveTo("C:/"); // here Path is ignored
    } on FirebaseException catch (e) {
      print("Error: ${e.message}");
      // Handle any errors.
    }
    // for other platforms see this solution : https://firebase.google.com/docs/storage/flutter/download-files#download_to_a_local_file
  }

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  void startDownload() async {
    downloadFileWeb(
        "gs://myportfolio-2b14b.appspot.com/dummy.pdf", "kiranResume");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
                ResponsiveVisibility(
                  visible: false,
                  visibleConditions: const [
                    Condition.equals(name: TABLET),
                    Condition.equals(name: MOBILE),
                    Condition.equals(name: 'MOBILE_SMALL')
                  ],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                  ),
                ),
                const ResponsiveVisibility(
                  visible: false,
                  visibleConditions: [Condition.largerThan(name: TABLET)],
                  child: Padding(
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
                ),
                const Spacer(),
                const ResponsiveVisibility(
                  visible: false,
                  visibleConditions: [
                    Condition.equals(name: TABLET),
                    Condition.equals(name: MOBILE),
                    Condition.equals(name: 'MOBILE_SMALL')
                  ],
                  child: Padding(
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
                ),
                ResponsiveVisibility(
                    visible: false,
                    visibleConditions: const [
                      Condition.largerThan(name: TABLET),
                      // Condition.equals(name: MOBILE)
                    ],
                    child: Padding(
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
                              onPressed: () async {
                                downloadFile("assets/pdf/kiranResume.pdf");

                                // startDownload();
                              },
                              child: const Text("RESUME"))
                        ],
                      ),
                    ))
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
