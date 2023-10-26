import 'package:flutter_hackaton/app/core/data/adult/model/adult_model.dart';

abstract class IAdultRepository {

  Future<AdultModel?> getOneByApi(int id);

  Future<List<AdultModel>> getAllByApi();
  
  Future<void> saveLocal(AdultModel adult);

  Future<AdultModel?> getOneByLocal(int id);

}