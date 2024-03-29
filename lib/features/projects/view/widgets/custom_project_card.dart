import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/features/projects/view/widgets/back_card_side.dart';
import 'package:kiran_portfolio_website/features/projects/view/widgets/front_card_side.dart';
import 'package:velocity_x/velocity_x.dart';

class CusotmProjectCard extends StatefulWidget {
  const CusotmProjectCard({super.key});

  @override
  State<CusotmProjectCard> createState() => _CusotmProjectCardState();
}

class _CusotmProjectCardState extends State<CusotmProjectCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child:
            VxBox(child: isHover ? const FrontCardSide() : const BackCardSide())
                .withDecoration(
                  BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        offset: const Offset(0, 0),
                        color: Colors.black.withAlpha(100),
                      )
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                )
                .make()
                .h(250)
                .w(370)
                .p(10),
      ),
    );
  }
}
