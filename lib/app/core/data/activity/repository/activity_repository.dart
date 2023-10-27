import 'package:flutter_hackaton/app/core/data/activity/model/activity_model.dart';

abstract class IActivityRepository {

  //FIREBASE - api não construida

  Future<ActivityModel?> getOne(int id);

  Future<List<ActivityModel>> getAll();
  
  Future<void> save(ActivityModel activity);

}