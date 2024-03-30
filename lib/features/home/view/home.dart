import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/const/resource.dart';
import 'package:kiran_portfolio_website/features/home/view/widgets/custom_socialmedia_icon.dart';
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
          horizontal: context.screenWidth * 0.12, vertical: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInLeft(
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
                      WavyAnimatedText('Hi There',
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 55)),
                    ],
                    isRepeatingAnimation: true,
                  ),
                ).box.make(),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Kiran',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 55),
                      ),
                      TextSpan(
                        text: ' Kamal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 55,
                          color: Color.fromARGB(255, 234, 138, 4),
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
                        fontFamily: 'Horizon',
                      ),
                    ),
                    const SizedBox(height: 100.0),
                    DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Horizon',
                          color: Color.fromARGB(255, 234, 138, 4)),
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
                ).box.width(250).make(),
                const Gap(20),
                const Row(
                  children: [
                    CustomSocialMediaIcons(
                      assetName: R.ASSETS_IMAGES_FACEBOOK_PNG,
                    ),
                    CustomSocialMediaIcons(
                      assetName: R.ASSETS_IMAGES_INSTA_PNG,
                    ),
                    CustomSocialMediaIcons(
                      assetName: R.ASSETS_IMAGES_LINKEDIN_PNG,
                    ),
                    CustomSocialMediaIcons(
                      assetName: R.ASSETS_IMAGES_WHATSAPP_PNG,
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(400),
          FadeInRight(
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
              )),
        ],
      ),
    );
  }
}
