import 'package:dio/dio.dart';
import 'package:population/core/shared/config.dart';


class AuthServices{


   Future<Response> loginWithUsernameAndPassword(String userName, String password) async {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: Config.getUrl(Config.authAddress),
        responseType: ResponseType.json,
        connectTimeout: 10000,
      ),
    );

    Map<String, dynamic> reqBody = {
      'email': userName,
      'password': password,
      'deviceID': 'test',
      
    };

    return await dio.post(
      '/auth/login',
      data: reqBody,
      options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return status! <= 500;
        },
      ),
    );
  }

 
  
}