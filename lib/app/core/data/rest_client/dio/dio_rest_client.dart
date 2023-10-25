import 'package:dio/dio.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client_exception.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client_response.dart';
import 'package:flutter_hackaton/app/core/helpers/constants.dart';
import 'package:flutter_hackaton/app/core/helpers/environments.dart';

class DioRestClient implements RestClient {
  late final Dio _dio;

  final _defaultBaseOptions = BaseOptions(
      baseUrl: Environments.param(Constants.ENV_BASE_URL_KEY) ?? '',
      connectTimeout: Duration(
          seconds: int.parse(Environments.param(
                  Constants.ENV_REST_CLIENT_CONNECT_TIMEOUT_KEY) ??
              '0')),
      receiveTimeout: Duration(
          seconds: int.parse(Environments.param(
                  Constants.ENV_REST_CLIENT_RECEIVE_TIMEOUT_KEY) ??
              '0')),
      headers: {
        "Accept": "application/json",
      });

  DioRestClient() {
    _dio = Dio(_defaultBaseOptions);    
  }

  // @override
  // RestClient auth() {
  //   _defaultBaseOptions.extra['auth_required'] = true;
  //   return this;
  // }

  // @override
  // RestClient noAuth() {
  //   _defaultBaseOptions.extra['auth_required'] = false;
  //   return this;
  // }

  @override
  Future<RestClientResponse<T>> delete<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        //o baseoption passado faz um merge com o existente, não substitui
        options: Options(headers: headers),
      );

      return _dioResponseConverter(response);
    } on DioException catch (e) {
      _throwRestClientException(e);
    }
  }

  @override
  Future<RestClientResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        //o baseoption passado faz um merge com o existente, não substitui
        options: Options(headers: headers),
      );

      return _dioResponseConverter(response);
    } on DioException catch (e) {
      _throwRestClientException(e);
    }
  }

  @override
  Future<RestClientResponse<T>> patch<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        //o baseoption passado faz um merge com o existente, não substitui
        options: Options(headers: headers),
      );

      return _dioResponseConverter(response);
    } on DioException catch (e) {
      _throwRestClientException(e);
    }
  }

  @override
  Future<RestClientResponse<T>> post<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        //o baseoption passado faz um merge com o existente, não substitui
        options: Options(headers: headers),
      );

      return _dioResponseConverter(response);
    } on DioException catch (e) {
      _throwRestClientException(e);
    }
  }

  @override
  Future<RestClientResponse<T>> put<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
        //o baseoption passado faz um merge com o existente, não substitui
        options: Options(headers: headers),
      );

      return _dioResponseConverter(response);
    } on DioException catch (e) {
      _throwRestClientException(e);
    }
  }

  @override
  Future<RestClientResponse<T>> request<T>(
    String path, {
    required String method,
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        //o baseoption passado faz um merge com o existente, não substitui
        options: Options(headers: headers, method: method),
      );

      return _dioResponseConverter(response);
    } on DioException catch (e) {
      _throwRestClientException(e);
    }
  }

  Future<RestClientResponse<T>> _dioResponseConverter<T>(
      Response<dynamic> response) async {
    return RestClientResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }

  //Never é usado para quando o método nunca chega ao fim.
  //Quando acontece o throw
  Never _throwRestClientException(DioException dioException) {
    final response = dioException.response;

    throw RestClientException(
      error: dioException.error,
      message: dioException.message,
      statusCode: response?.statusCode,
      response: RestClientResponse(
        data: response?.data,
        statusCode: response?.statusCode,
        statusMessage: response?.statusMessage,
      ),
    );
  }
}
