import 'package:flutter_hackaton/app/core/data/money/model/extract_item_model.dart';
import 'package:flutter_hackaton/app/core/data/money/repository/extract_item_repository_impl.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/http/http_rest_clint.dart';
import 'package:flutter_hackaton/app/core/data/rest_client/rest_client.dart';

class ExtractItemService {
  Future<List<ExtractItemModel>> getAllExtractItem() {
    final RestClient clientRest = HttpRestClint();
    
    final repository = ExtractItemRepository(restClient: clientRest);

    return repository.getAll();
  }

  Future<ExtractItemModel?> getOneExtractItem(int id) {
    final RestClient clientRest = HttpRestClint();
    final repository = ExtractItemRepository(restClient: clientRest);

    
    return repository.getOne(id);
  }
}
