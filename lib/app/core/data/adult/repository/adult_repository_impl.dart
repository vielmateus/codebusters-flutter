import 'package:flutter_hackaton/app/core/data/adult/model/adult_model.dart';
import 'package:flutter_hackaton/app/core/data/adult/repository/adult_repository.dart';
import 'package:flutter_hackaton/app/core/local_storage/shared_preferences/shared_preferences.dart';

class AdultRepositoryImpl implements IAdultRepository {
  @override
  Future<List<AdultModel>> getAllByApi() {
    // TODO: implement getAllByApi
    throw UnimplementedError();
  }

  @override
  Future<AdultModel?> getOneByApi(int id) {
    // TODO: implement getOneByApi
    throw UnimplementedError();
  }

  @override
  Future<void> saveLocal(AdultModel adult) async {
    await SharedPreferencesLocal().write('adult', adult);
  }

  @override
  Future<AdultModel?> getOneByLocal(int id) async {
    var adult = await SharedPreferencesLocal().read<AdultModel>(id.toString());
    return adult;
  }
}
