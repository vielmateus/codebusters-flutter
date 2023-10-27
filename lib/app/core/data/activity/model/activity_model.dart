// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ActivityModel {
  String activity;
  double values;
  DateTime date;

  ActivityModel({
    required this.activity,
    required this.values,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity,
      'values': values,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      activity: map['activity'] as String,
      values: map['values'] as double,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityModel.fromJson(String source) =>
      ActivityModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
