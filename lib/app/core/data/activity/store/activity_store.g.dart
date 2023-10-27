// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ActivityStore on ActivityStoreBase, Store {
  late final _$activityAtom =
      Atom(name: 'ActivityStoreBase.activity', context: context);

  @override
  String get activity {
    _$activityAtom.reportRead();
    return super.activity;
  }

  @override
  set activity(String value) {
    _$activityAtom.reportWrite(value, super.activity, () {
      super.activity = value;
    });
  }

  late final _$valuesAtom =
      Atom(name: 'ActivityStoreBase.values', context: context);

  @override
  double get values {
    _$valuesAtom.reportRead();
    return super.values;
  }

  @override
  set values(double value) {
    _$valuesAtom.reportWrite(value, super.values, () {
      super.values = value;
    });
  }

  late final _$dateAtom =
      Atom(name: 'ActivityStoreBase.date', context: context);

  @override
  DateTime get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(DateTime value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$ActivityStoreBaseActionController =
      ActionController(name: 'ActivityStoreBase', context: context);

  @override
  void setActivity(String activity) {
    final _$actionInfo = _$ActivityStoreBaseActionController.startAction(
        name: 'ActivityStoreBase.setActivity');
    try {
      return super.setActivity(activity);
    } finally {
      _$ActivityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setValues(double values) {
    final _$actionInfo = _$ActivityStoreBaseActionController.startAction(
        name: 'ActivityStoreBase.setValues');
    try {
      return super.setValues(values);
    } finally {
      _$ActivityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime date) {
    final _$actionInfo = _$ActivityStoreBaseActionController.startAction(
        name: 'ActivityStoreBase.setDate');
    try {
      return super.setDate(date);
    } finally {
      _$ActivityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activity: ${activity},
values: ${values},
date: ${date}
    ''';
  }
}
