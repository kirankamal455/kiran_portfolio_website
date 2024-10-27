import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiran_portfolio_website/data/model/contact_details_model.dart';
import 'package:kiran_portfolio_website/data/model/project_model.dart';

final contactDetailsPod =
    StateProvider.autoDispose<List<ContactDetailsModel>>((ref) {
  return <ContactDetailsModel>[
    ContactDetailsModel(
        type: 0, tittle: "Home", Subtittle: "Pathanamthitta,kerala"),
    ContactDetailsModel(type: 1, tittle: "Phone", Subtittle: "+918113887254"),
    ContactDetailsModel(
        type: 2, tittle: "Email", Subtittle: "Kirankamal45@gmail.com")
  ];
});
