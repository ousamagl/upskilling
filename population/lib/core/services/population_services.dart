import 'package:dio/dio.dart';
import 'package:population/core/shared/config.dart';

class PopulationServices {

  Future<Response> getCities() async {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: Config.getUrl(Config.populationAddress),
        responseType: ResponseType.json,
        connectTimeout: 10000,
      ),
    );

    return await dio.get(
      '/population/cities',
    );
  }

   Future<Response> getFlags() async {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: Config.getUrl(Config.populationAddress),
        responseType: ResponseType.json,
        connectTimeout: 10000,
      ),
    );

    return await dio.get(
      '/flag/images',
    );
  }
}
