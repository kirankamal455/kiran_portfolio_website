import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiran_portfolio_website/data/provider/i_user_profile_provider.dart';
import 'package:kiran_portfolio_website/data/provider/user_profile_provider.dart';
import 'package:kiran_portfolio_website/shared/api_client/dio/dio_client_provider.dart';

final userProfileProviderPod = Provider.autoDispose<IUserProfileProvider>((ref) {
  return UserProfileProvider(
    dio: ref.watch(dioProvider),
    
  );
});
