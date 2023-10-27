import 'dart:convert';


class WalletModel {
  String? id;
  String adult;
  double values;

  WalletModel({
    this.id,
    required this.adult,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'adult': adult,
      'values': values,
    };
  }

  factory WalletModel.fromMap(Map<String, dynamic> map, String pId) {
    return WalletModel(
      id: pId,
      adult: map['adult'] as String,
      values: map['values'] as double,
    );
  }

  String toJson() => json.encode(toMap());

}
