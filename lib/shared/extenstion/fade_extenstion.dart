import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

extension FadeWidget on Widget {
  Widget fadeInUp({Duration? duration, double? offset}) => FadeInUp(
      delay: 0.ms,
      offset: offset,
      duration: duration ?? const Duration(milliseconds: 1400),
      curves: Curves.easeOut,
      globalKey: GlobalKey(),
      child: this);

  Widget fadeInRight({int milliseconds = 0, double? offset}) => FadeInRight(
        delay: 0.ms,
        duration: Duration(milliseconds: milliseconds),
        curves: Curves.easeOut,
        offset: offset,
        globalKey: GlobalKey(),
        child: this,
      );
  Widget fadeInDown({int milliseconds = 0, double? offset}) => FadeInDown(
        delay: 0.ms,
        duration: Duration(milliseconds: milliseconds),
        curves: Curves.easeOut,
        offset: offset,
        globalKey: GlobalKey(),
        child: this,
      );
}
