import 'package:flutter_hackaton/app/core/data/money/model/extract_item_model.dart';

abstract class IExtractItemRepository {

  Future<ExtractItemModel?> getOne(int id);

  Future<List<ExtractItemModel>> getAll();
  
}
