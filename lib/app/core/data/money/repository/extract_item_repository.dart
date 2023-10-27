import 'package:flutter_hackaton/app/core/data/money/model/extract_item_model.dart';

abstract class IExtractItemRepository {

  Future<ExtractItemModel?> getOneByApi(int id);

  Future<List<ExtractItemModel>> getAllByApi();  
}
