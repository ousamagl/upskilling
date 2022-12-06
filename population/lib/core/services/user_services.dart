import 'package:dio/dio.dart';
import 'package:population/core/shared/config.dart';

class UserServices {
  Future<Response> getUserProfile() async {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: Config.getUrl(Config.profileAddress),
        responseType: ResponseType.json,
        connectTimeout: 10000,
      ),
    );

    dio.options.headers = {
      'Authorization': 'Bearer ' + '_token',
    };

    return await dio.get(
      '/user/profile',
    );
  }
}
