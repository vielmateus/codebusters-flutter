//responsavel pelo in/out da aplicacao
import 'dart:convert';

import 'package:flutter_hackaton/app/core/data/money/model/extract_item_model.dart';
import 'package:flutter_hackaton/app/core/data/money/repository/extract_item_repository.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client_exception.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client_response.dart';
import 'package:flutter_hackaton/app/core/exceptions/failure.dart';

class ExtractItemRepository implements IExtractItemRepository {
  final RestClient _restClient;

  ExtractItemRepository({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<ExtractItemModel?> getOne(int id) async {
    try {
      RestClientResponse<String> extractItemResponse = await _restClient.get<String>('/01001000/json');

      return extractItemModelFromJson(extractItemResponse.data ?? "{}");
    } on RestClientException {
      throw Failure(message: 'Erro ao buscar dados do usuário');
    }
  }

  @override
  Future<List<ExtractItemModel>> getAll() async {
    RestClientResponse<String> extractItemResponse = await _restClient.get<String>('/01001000/json');

    final extractItemResponseList = jsonDecode(extractItemResponse.data ?? "{}");

    return extractItemResponseList
        .map<ExtractItemModel>(
            (extractItemMap) => ExtractItemModel.fromJson(extractItemMap))
        .toList();
  }
}
