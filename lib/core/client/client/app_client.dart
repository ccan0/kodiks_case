import 'package:dio/dio.dart';
import 'package:kodiks_case/core/client/type/app_client_interface.dart';
import 'package:kodiks_case/utilities/constants/url_constants/url_constants.dart';

class AppClient implements IAppClient{
  static final AppClient _instance = AppClient._internal();

  factory AppClient() {
    return _instance;
  }

  final Dio _dio = Dio();

  AppClient._internal() {
    _dio.options = BaseOptions(
      baseUrl: UrlConstants().baseUrl,
    );
  }

  @override
  Future<Response> get({required String url, Map<String, dynamic>? queryParameters}) async {
    try {
      final Response response = await _dio.get(url, queryParameters: queryParameters);
      return response;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> post({required String url, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body}) async {
    try {
      final Response response = await _dio.post(url, data: body);
      return response;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> put({required String url, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body}) async {
    try {
      final Response response = await _dio.put(url, data: body);
      return response;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> delete({required String url, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body}) async {
    try {
      final Response response = await _dio.delete(url, data: body);
      return response;
    } catch (_) {
      rethrow;
    }
  }
}