import 'package:kiran_portfolio_website/data/model/user_profile_response_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class IUserProfileRepository {
Future<Result<UserProfileResponseModel,Exception>> getUserProfile({required int userId});
}
