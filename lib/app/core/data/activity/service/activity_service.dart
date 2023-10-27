import 'package:flutter_hackaton/app/core/data/activity/model/activity_model.dart';
import 'package:flutter_hackaton/app/core/data/activity/repository/activity_repository_impl.dart';

class ActivityService {
  Future<void> saveActivity(ActivityModel adult) async {
    final repository = ActivityRepositoryImpl();

    repository.save(adult);
  }

  Future<List<ActivityModel>> getAll() async {
    final repository = ActivityRepositoryImpl();
    
    var list = repository.getAll();

    return list;
  }
}
