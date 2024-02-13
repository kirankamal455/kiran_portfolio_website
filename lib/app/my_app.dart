import 'package:flutter/material.dart';
import 'package:kiran_portfolio_website/features/dashboard/view/dash_board.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_scaled_box.dart';
import 'package:responsive_framework/responsive_value.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: Builder(
          builder: (context) {
            return ResponsiveScaledBox(
                width: ResponsiveValue<double>(
                  context,
                  conditionalValues: [
                    Condition.equals(name: MOBILE, value: 450),
                    // Condition.between(start: 500, end: 800, value: 500),
                    // Condition.between(start: 800, end: 1100, value: 800),
                    // Condition.between(start: 1000, end: 1200, value: 700),
                  ],
                ).value,
                child: MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: child!,
                ));
          },
        ),
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: const Dashboard(),
    );
  }
}
