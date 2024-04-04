import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:gap/gap.dart';
import 'package:kiran_portfolio_website/core/gen/fonts.gen.dart';
import 'package:kiran_portfolio_website/core/theme/theme.dart';
import 'package:kiran_portfolio_website/features/dashboard/view/dash_board.dart';
import 'package:kiran_portfolio_website/shared/helper/block_wrapper.dart';

import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: themeLight,
        builder: (context, widget) => ResponsiveBreakpoints.builder(
              child: Builder(builder: (context) {
                return ResponsiveScaledBox(
                    width: ResponsiveValue<double?>(context,
                        defaultValue: null,
                        conditionalValues: [
                          const Condition.equals(
                              name: 'MOBILE_SMALL', value: 480),
                        ]).value,
                    child: ClampingScrollWrapper.builder(context, widget!));
              }),
              breakpoints: [
                const Breakpoint(start: 0, end: 480, name: 'MOBILE_SMALL'),
                const Breakpoint(start: 481, end: 850, name: MOBILE),
                const Breakpoint(start: 850, end: 1080, name: TABLET),
                const Breakpoint(
                    start: 1081, end: double.infinity, name: DESKTOP),
              ],
            ),
        home: const Dashboard());
  }
}
