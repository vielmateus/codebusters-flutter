// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ActivityModel {
  String? id;
  String activity;
  double values;
  DateTime date;

  ActivityModel({
    this.id,
    required this.activity,
    required this.values,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'activity': activity,
      'values': values,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map, String pId) {
    return ActivityModel(
      id: pId,
      activity: map['activity'] as String,
      values: map['values'] as double,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
    );
  }

  String toJson() => json.encode(toMap());
}
