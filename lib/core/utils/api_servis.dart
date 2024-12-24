
import 'package:nima_ovqat/constans/imports.dart';

class ApiService {
  ApiService();

  Future<dynamic> makeGetRequest(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(endpoint, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 403) {
          await makeGetRequest(endpoint, queryParameters: queryParameters);
          return;
        }
        debugPrint('=================\n${e.response!.statusCode}\n$endpoint\n${e.response!}\n=================');
        throw e.response!.data;
      } else {
        throw 'Unknown error occurred';
      }
    }
  }

  Future<dynamic> makePostRequest(String endpoint, {Map<dynamic, dynamic>? data}) async {
    try {
      final response = await dio.post(
        endpoint,
        data: data,
      );

      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 403) {
          await makePostRequest(endpoint, data: data);
          return;
        }
        debugPrint('=================\n${e.response!.statusCode}\n$endpoint\n${e.response!}\n=================');
        throw e.response!.data;
      } else {
        throw 'Unknown error occurred';
      }
    }
  }

  Future<dynamic> makePatchRequest(String endpoint, {Map<dynamic, dynamic>? data}) async {
    try {
      final response = await dio.patch(
        endpoint,
        data: data,
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 403) {

          await makePatchRequest(endpoint, data: data);
          return;
        }
        debugPrint('=================\n${e.response!.statusCode}\n$endpoint\n${e.response!}\n=================');
        throw e.response!.data;
      } else {
        throw 'Unknown error occurred';
      }
    }
  }

  Future<dynamic> makePutRequest(String endpoint, {Map<dynamic, dynamic>? data}) async {
    try {
      final response = await dio.put(
        endpoint,
        data: data,
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 403) {

          await makePutRequest(endpoint, data: data);
          return;
        }
        debugPrint('=================\n${e.response!.statusCode}\n$endpoint\n${e.response!}\n=================');
        throw e.response!.data;
      } else {
        throw 'Unknown error occurred';
      }
    }
  }

  Future<dynamic> makeDeleteRequest(String endpoint, {Map<dynamic, dynamic>? data}) async {
    try {
      final response = await dio.delete(
        endpoint,
        data: data,
      );
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 403) {

          await makeDeleteRequest(endpoint, data: data);
          return;
        }
        debugPrint('=================\n${e.response!.statusCode}\n$endpoint\n${e.response!}\n=================');
        throw e.response!.data;
      } else {
        throw 'Unknown error occurred';
      }
    }
  }

}