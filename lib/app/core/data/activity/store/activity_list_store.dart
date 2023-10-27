import 'package:flutter_hackaton/app/core/data/activity/model/activity_model.dart';
import 'package:flutter_hackaton/app/core/data/activity/service/activity_service.dart';
import 'package:mobx/mobx.dart';

part 'activity_list_store.g.dart';

class ActivityListStore = ActivityListStoreBase with _$ActivityListStore;

abstract class ActivityListStoreBase with Store {
  ObservableList<ActivityModel> activitys = ObservableList();

  _BookListStore() {
    var service = ActivityService();
    service.getAll().then((value) => activitys.addAll(value));
  }

  @action
  void updateList() {
    activitys.clear();
    var service = ActivityService();
    service.getAll().then((value) => activitys.addAll(value));
  }
}
