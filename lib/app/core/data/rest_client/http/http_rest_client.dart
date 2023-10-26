import 'dart:io';

import 'package:flutter_hackaton/app/core/data/rest_client/rest_client_exception.dart';
import 'package:flutter_hackaton/app/core/helpers/constants.dart';
import 'package:flutter_hackaton/app/core/helpers/environments.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_hackaton/app/core/data/rest_client/rest_client.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client_response.dart';
import 'package:http/http.dart';

class HttpRestClint implements RestClient {
  //HttpRestClint(){}

  @override
  Future<RestClientResponse<T>> delete<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await http.delete(
          Uri.https(Environments.param(Constants.ENV_BASE_URL_KEY) ?? '', path),
          body: data);

      return _httpResponseConverter(response);
    } on HttpException catch (e) {
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
      var url = Uri.parse('${Environments.param(Constants.ENV_BASE_URL_KEY) ?? ''}$path');

      //var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
      
      // var baseUrl = Environments.param(Constants.ENV_BASE_URL_KEY) ?? '';
      // var url = Uri.https(baseUrl,
      //     path, {'q': '{http}'});
      
      final response = await http.get(url);

      return _httpResponseConverter(response);
    } on HttpException catch (e) {
      _throwRestClientException(e);
    }
  }

  @override
  Future<RestClientResponse<T>> patch<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> put<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> request<T>(String path,
      {required String method,
      data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    // TODO: implement request
    throw UnimplementedError();
  }

  Future<RestClientResponse<T>> _httpResponseConverter<T>(
      Response response) async {
    return RestClientResponse<T>(
      data: response.body as dynamic,
      statusCode: response.statusCode,
      statusMessage: response.statusCode.toString(),
    );
  }

  Never _throwRestClientException(HttpException httpException) {
    final response = httpException;

    throw RestClientException(
      error: '',
      message: httpException.message,
      statusCode: 0,
      response: RestClientResponse(
        data: '',
        statusCode: 0,
        statusMessage: response.message,
      ),
    );
  }
}
