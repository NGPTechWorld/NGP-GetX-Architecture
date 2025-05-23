import '/app/services/api/dio_consumer.dart';

abstract class ApiServices {
  dynamic request({
    required String url,
    required Method method,
    required bool requiredToken,
    bool requiredFCMToken = false,
    Map<String, dynamic>? queryParameters,
    bool uploadImage = false,
    //Map<String, dynamic>? params,
    Object? params,
  });
}
