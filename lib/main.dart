import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiran_portfolio_website/app/my_app.dart';
import 'package:talker_flutter/talker_flutter.dart';
 

final talker = TalkerFlutter.init(
  settings: TalkerSettings(),
  logger: TalkerLogger(
    output: debugPrint,
  ),
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}
