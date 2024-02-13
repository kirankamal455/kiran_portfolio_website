import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/const/resource.dart';
import 'package:kiran_portfolio_website/features/home/view/widgets/custom_socialmedia_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hi There\nI\'m Kiran ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 55),
                    ),
                    TextSpan(
                      text: 'Kamal',
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
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'I Am into',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    TextSpan(
                      text: 'Flutter Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Color.fromARGB(255, 203, 112, 8),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text("About Me"),
                icon: const Icon(Icons.info),
              ),
              const Gap(30),
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
          const Gap(150),
          Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(R.ASSETS_IMAGES_PROFILE_JPG),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}
