import 'package:dio/dio.dart';
import 'package:kiran_portfolio_website/shared/api_client/dio/default_api_error_handler.dart';

class DefaultAPIInterceptor extends Interceptor {
  DefaultAPIInterceptor({
    required this.dio,
  });
  final Dio dio;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    defaultAPIErrorHandler(err, handler, dio);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers['Access-Control-Allow-Origin'] = '*';
    //  options.validateStatus = (status) => true;
    super.onRequest(options, handler);
  }
}
