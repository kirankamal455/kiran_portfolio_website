import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/const/resource.dart';
import 'package:kiran_portfolio_website/core/gen/assets.gen.dart';
import 'package:kiran_portfolio_website/core/gen/fonts.gen.dart';
import 'package:kiran_portfolio_website/features/home/view/widgets/custom_socialmedia_icon.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final _controller = ScrollController();
  late AnimationController animation;
  @override
  void initState() {
    super.initState();
    animation = AnimationController(vsync: this);
    _controller.addListener(() {
      animation.value =
          1 - _controller.offset / _controller.position.maxScrollExtent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.12, vertical: 150),
      child: ResponsiveRowColumn(
        columnSpacing: 60,
        rowSpacing: 60,
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            child: FadeInLeft(
              delay: 0.ms,
              duration: const Duration(milliseconds: 1400),
              curves: Curves.easeOut,
              offset: 450,
              globalKey: GlobalKey(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText(
                          'Hi There',
                          textStyle: const TextStyle(
                            fontFamily: FontFamily.montserrat,
                            fontWeight: FontWeight.bold,
                            fontSize: 55,
                          ),
                        ),
                      ],
                      isRepeatingAnimation: true,
                    ),
                  ).box.make(),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Kiran',
                          style: TextStyle(
                              fontFamily: FontFamily.montserrat,
                              fontWeight: FontWeight.bold,
                              fontSize: 55),
                        ),
                        TextSpan(
                          text: ' Kamal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 55,
                            color: context.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Row(
                    children: <Widget>[
                      const Text(
                        '''Iam a ''',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          fontFamily: FontFamily.montserrat,
                        ),
                      ),
                      const SizedBox(height: 100.0),
                      DefaultTextStyle(
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.poppins,
                            color: context.primaryColor),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              ' Flutter Developer',
                              speed: const Duration(milliseconds: 50),
                            ),
                            TyperAnimatedText(
                              ' UI/UX Enthusiast',
                              speed: const Duration(milliseconds: 50),
                            ),
                            TyperAnimatedText(
                              ' Programmer',
                              speed: const Duration(milliseconds: 50),
                            ),
                          ],
                          isRepeatingAnimation: true,
                        ),
                      )
                    ],
                  ).box.make(),
                  const Gap(20),
                  Row(
                    children: [
                      const CustomSocialMediaIcons(
                        assetName: R.ASSETS_IMAGES_FACEBOOK_PNG,
                      ),
                      const CustomSocialMediaIcons(
                        assetName: R.ASSETS_IMAGES_INSTA_PNG,
                      ),
                      const CustomSocialMediaIcons(
                        assetName: R.ASSETS_IMAGES_LINKEDIN_PNG,
                      ),
                      const CustomSocialMediaIcons(
                        assetName: R.ASSETS_IMAGES_WHATSAPP_PNG,
                      ),
                      CustomSocialMediaIcons(
                        assetName: MyAssets.images.github.path,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // const Spacer(),
          ResponsiveRowColumnItem(
            child: FadeInRight(
              delay: 0.ms,
              duration: const Duration(milliseconds: 1400),
              curves: Curves.easeOut,
              offset: 450,
              globalKey: GlobalKey(),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(R.ASSETS_IMAGES_PROFILE_JPG),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
