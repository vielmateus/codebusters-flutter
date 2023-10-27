import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_hackaton/app/core/data/activity/model/activity_model.dart';
import 'package:flutter_hackaton/app/core/data/activity/repository/activity_repository.dart';

class ActivityRepositoryImpl implements IActivityRepository {
  
  static String tableName = "activitys";

  @override
  Future<List<ActivityModel>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<ActivityModel?> getOne(int id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<void> save(ActivityModel activity) async {
     await FirebaseFirestore.instance
        .collection(tableName)
        .add(activity.toMap());

  }
}
