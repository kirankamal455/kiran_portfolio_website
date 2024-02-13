import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/features/services/controller/service_card_hover_pod.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomServiceCardCard extends ConsumerWidget {
  final String tittle;

  const CustomServiceCardCard({
    super.key,
    required this.tittle,
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
          ref
              .read(serviceCardHoverPod(tittle).notifier)
              .update((state) => true);
        } else {
          ref.invalidate(serviceCardHoverPod);
        }
      },
      child: Consumer(
        builder: (_, WidgetRef ref, __) {
          final isHover = ref.watch(serviceCardHoverPod(tittle));
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
              VxBox().color(Colors.yellow).height(50).width(50).make(),
              const Gap(10),
              tittle.text.xl.bold.make().pSymmetric(v: 5),
            ].vStack(alignment: MainAxisAlignment.center).p(15),
          );
        },
      ).h(250).w(370).p(10),
    );
  }
}
