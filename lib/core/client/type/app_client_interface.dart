import 'package:dio/dio.dart';

abstract class IAppClient {
  Future<Response> get({required String url, Map<String, dynamic>? queryParameters});
  Future<Response> post({required String url, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body});
  Future<Response> put({required String url, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body});
  Future<Response> delete({required String url, Map<String, dynamic>? queryParameters, Map<String, dynamic>? body});
}