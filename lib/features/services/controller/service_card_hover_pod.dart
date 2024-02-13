import 'package:flutter_riverpod/flutter_riverpod.dart';

final serviceCardHoverPod =
    StateProvider.autoDispose.family<bool, String>((ref, key) {
  return false;
});
