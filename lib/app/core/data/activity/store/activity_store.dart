import 'package:flutter_hackaton/app/core/data/activity/model/activity_model.dart';
import 'package:flutter_hackaton/app/core/data/activity/service/activity_service.dart';

import 'package:mobx/mobx.dart';
part 'activity_store.g.dart';

class ActivityStore = ActivityStoreBase with _$ActivityStore;

abstract class ActivityStoreBase with Store {
  @observable
  String activity = '';
  @observable
  double values = 0.0;
  @observable
  DateTime date = DateTime.now();

  @action
  void setActivity(String activity) {
    this.activity = activity;
  }

  @action
  void setValues(double values) {
    this.values = values;
  }

  @action
  void setDate(DateTime date) {
    this.date = date;
  }

  Future<void> save() async {
    final service = ActivityService();
    service.saveActivity(
      ActivityModel(
        activity: activity,
        values: values,
        date: date,
      ),
    );
  }
}
