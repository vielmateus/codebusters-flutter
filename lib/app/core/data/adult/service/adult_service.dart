
import 'package:flutter_hackaton/app/core/data/adult/model/adult_model.dart';
import 'package:flutter_hackaton/app/core/data/adult/repository/adult_repository_impl.dart';

class AdultService {
  Future<AdultModel?> getOneAdult(int id){
    final repository = AdultRepositoryImpl();

    return repository.getOneByLocal(id);
  }

  Future<void> saveAdult(AdultModel adult) async {
    final repository = AdultRepositoryImpl();

    repository.saveLocal(adult);
  }
}