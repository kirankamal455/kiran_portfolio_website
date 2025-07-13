import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/core/gen/fonts.gen.dart';
import 'package:kiran_portfolio_website/features/about_me/view/about_me.dart';
import 'package:kiran_portfolio_website/features/contact/view/contact.dart';
import 'package:kiran_portfolio_website/features/dashboard/controller/get_user_profile_pod.dart';
import 'package:kiran_portfolio_website/features/footer_section/view/footer_section.dart';
import 'package:kiran_portfolio_website/features/home/view/home.dart';
import 'package:kiran_portfolio_website/features/projects/view/projects.dart';
import 'package:kiran_portfolio_website/features/services/view/services.dart';
import 'package:kiran_portfolio_website/features/talk_with_me/view/talk_with_me_page.dart';
import 'package:kiran_portfolio_website/features/tools_and_tech/view/tools_and_tech.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:selectable/selectable.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:velocity_x/velocity_x.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController scrollController = ScrollController();
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
    } on FirebaseException catch (e) {
      print("Error: ${e.message}");
    }
  }

  void startDownload() async {
    downloadFileWeb(
        "gs://myportfolio-2b14b.appspot.com/dummy.pdf", "kiranResume");
  }

  Future<void> savePdf() async {
    try {
      var status = await Permission.storage.request();

      if (status.isGranted) {
        final ByteData bytes =
            await rootBundle.load("assets/pdf/kiranResume.pdf");
        final Uint8List buffer = bytes.buffer.asUint8List();

        final Directory? directory = await getExternalStorageDirectory();

        if (directory != null) {
          final File file = File('${directory.path}/kiranResume.pdf');
          await file.writeAsBytes(buffer);
          print('PDF saved to ${file.path}');
        }
      } else {
        print('Permission denied');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: context.primaryColor,
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: context.primaryColor),
                  accountName: const Text(
                    "Kiran Kamal",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: const Text(
                    "Kirankamal45@gmail.com",
                  ),
                  currentAccountPictureSize: const Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "K",
                      style: TextStyle(
                          fontSize: 30.0, color: context.primaryColor),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('HOME'),
                onTap: () {
                  Scrollable.ensureVisible(
                    homePageKey.currentContext!,
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeInOut,
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('ABOUT'),
                onTap: () {
                  Scrollable.ensureVisible(
                    aboutMePageKey.currentContext!,
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeInOut,
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text('SERVICES'),
                onTap: () {
                  Scrollable.ensureVisible(
                    servicePageKey.currentContext!,
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeInOut,
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text('PROJECTS'),
                onTap: () {
                  Scrollable.ensureVisible(
                    projectPageKey.currentContext!,
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeInOut,
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('RESUME'),
                onTap: () {
                  savePdf();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size(300, 70),
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
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
                              child: const Text("HOME"),
                            ),
                            const Gap(14),
                            TextButton(
                              onPressed: () {
                                Scrollable.ensureVisible(
                                  aboutMePageKey.currentContext!,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const Text("ABOUT"),
                            ),
                            const Gap(14),
                            TextButton(
                              onPressed: () {
                                Scrollable.ensureVisible(
                                  servicePageKey.currentContext!,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const Text("SERVICES"),
                            ),
                            const Gap(14),
                            TextButton(
                              onPressed: () {
                                Scrollable.ensureVisible(
                                  projectPageKey.currentContext!,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const Text("PROJECTS"),
                            ),
                            const Gap(14),
                            TextButton(
                              onPressed: () {
                                Scrollable.ensureVisible(
                                  contactPageKey.currentContext!,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const Text("CONTACTS"),
                            ),
                            const Gap(14),
                            OutlinedButton(
                              onPressed: () {
                                startDownload();
                              },
                              child: const Text("RESUME"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Selectable(
            child: Consumer(
              builder: (context, ref, child) {
                final userProfileAsync = ref.watch(getUserProfilePod(2));

                return userProfileAsync.when(
                  data: (userProfile) {
                    return Column(
                      children: [
                        HomePage(
                          key: homePageKey,
                          userProfileResponseModel: userProfile,
                        ),
                        AboutMePage(
                          key: aboutMePageKey,
                        ),
                        const ToolsAndTech(),
                        ServicesPage(
                          key: servicePageKey,
                          userProfileResponseModel: userProfile,
                        ),
                        ProjectsPage(
                          key: projectPageKey,
                          userProfileResponseModel: userProfile,
                        ),
                        ContactPage(
                          key: contactPageKey,
                          userProfileResponseModel: userProfile,
                        ),
                        const TalkWithMePage(),
                        const FooterSection(),
                      ],
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator())
                          .objectCenter(),
                  error: (error, stack) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Error: $error'),
                        ElevatedButton(
                          onPressed: () {
                            ref.refresh(getUserProfilePod(1));
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ).objectCenter(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
