import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiran_portfolio_website/data/model/user_profile_response_model.dart';
import 'package:kiran_portfolio_website/data/repository/user_profile/user_profile_repo_pod.dart';

final getUserProfilePod = FutureProvider.family
    .autoDispose<UserProfileResponseModel, int>((ref, id) async {
  final result =
      await ref.watch(userProfileRepositoryPod).getUserProfile(userId: id);
  return result.when(
    (succes) {
      return succes;
    },
    (error) {
      throw error;
    },
  );
});
