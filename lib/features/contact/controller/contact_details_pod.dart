import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiran_portfolio_website/data/model/contact_details_model.dart';
import 'package:kiran_portfolio_website/data/model/project_model.dart';
import 'package:kiran_portfolio_website/data/model/user_profile_response_model.dart';

final contactDetailsPod = StateProvider.autoDispose
    .family<List<ContactDetailsModel>, UserProfileResponseModel>((ref, arg) {
  return <ContactDetailsModel>[
    ContactDetailsModel(type: 0, tittle: "Home", Subtittle: arg.address),
    ContactDetailsModel(type: 1, tittle: "Phone", Subtittle: arg.phone),
    ContactDetailsModel(type: 2, tittle: "Email", Subtittle: arg.phone)
  ];
});
