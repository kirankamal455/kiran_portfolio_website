import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiran_portfolio_website/data/provider/user_profile_pod.dart';
import 'package:kiran_portfolio_website/data/repository/user_profile/i_user_profile_repository.dart';
import 'package:kiran_portfolio_website/data/repository/user_profile/user_profile_repository.dart';

final userProfileRepositoryPod = Provider.autoDispose<IUserProfileRepository>((ref) {
  return UserProfileRepository(iUserProfileProvider: ref.watch(userProfileProviderPod));
});
