// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WalletStore on WalletStoreBase, Store {
  Computed<bool>? _$inInsertComputed;

  @override
  bool get inInsert =>
      (_$inInsertComputed ??= Computed<bool>(() => super.inInsert,
              name: 'WalletStoreBase.inInsert'))
          .value;

  late final _$idAtom = Atom(name: 'WalletStoreBase.id', context: context);

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$adultAtom =
      Atom(name: 'WalletStoreBase.adult', context: context);

  @override
  String get adult {
    _$adultAtom.reportRead();
    return super.adult;
  }

  @override
  set adult(String value) {
    _$adultAtom.reportWrite(value, super.adult, () {
      super.adult = value;
    });
  }

  late final _$valuesAtom =
      Atom(name: 'WalletStoreBase.values', context: context);

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

  late final _$WalletStoreBaseActionController =
      ActionController(name: 'WalletStoreBase', context: context);

  @override
  void setAdult(String adult) {
    final _$actionInfo = _$WalletStoreBaseActionController.startAction(
        name: 'WalletStoreBase.setAdult');
    try {
      return super.setAdult(adult);
    } finally {
      _$WalletStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setValues(double values) {
    final _$actionInfo = _$WalletStoreBaseActionController.startAction(
        name: 'WalletStoreBase.setValues');
    try {
      return super.setValues(values);
    } finally {
      _$WalletStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
adult: ${adult},
values: ${values},
inInsert: ${inInsert}
    ''';
  }
}
