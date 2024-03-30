import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hovering/hovering.dart';
import 'package:kiran_portfolio_website/features/contact/controller/contact_controller_pod.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomContactCard extends ConsumerWidget {
  final IconData icon;
  final String tittle;
  final String subtittle;
  const CustomContactCard({
    super.key,
    required this.icon,
    required this.tittle,
    required this.subtittle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          ref.read(cardSelectPod(tittle).notifier).update((state) => true);
        } else {
          ref.invalidate(cardSelectPod);
        }
      },
      child: Consumer(
        builder: (_, WidgetRef ref, __) {
          final isHover = ref.watch(cardSelectPod(tittle));
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  isHover
                      ? BoxShadow(
                          color: Colors.yellow.withAlpha(100),
                          blurRadius: 12.0,
                          offset: const Offset(0.0, 0.0),
                        )
                      : BoxShadow(
                          color: Colors.black.withAlpha(100),
                          blurRadius: 12.0,
                          offset: const Offset(0.0, 0.0),
                        )
                ]),
            child: [
              Icon(
                icon,
                color: Colors.red,
                size: 50,
              ),
              const Gap(10),
              tittle.text.xl.bold.make().pSymmetric(v: 5),
              subtittle.text.make()
            ].vStack(alignment: MainAxisAlignment.center).p(15),
          );
        },
      ).h(200).w(300).p(10),
    );
  }
}
