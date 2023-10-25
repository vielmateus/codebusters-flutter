import 'dart:convert';

ExtractItemModel extractItemModelFromJson(String str) =>
    ExtractItemModel.fromJson(json.decode(str));

String extractItemModelToJson(ExtractItemModel data) =>
    json.encode(data.toJson());

class ExtractItemModel {
  String dateEvent;
  String valueTransf;
  String balance;

  ExtractItemModel({
    required this.dateEvent,
    required this.valueTransf,
    required this.balance,
  });

  factory ExtractItemModel.fromJson(Map<String, dynamic> json) =>
      ExtractItemModel(
        dateEvent: json["uf"],
        valueTransf: json["gia"],
        balance: json["ibge"],
      );

  Map<String, dynamic> toJson() => {
        "dateEvent": dateEvent,
        "valueTransf": valueTransf,
        "balance": balance,
      };

  ExtractItemModel copyWith({
    String? dateEvent,
    String? valueTransf,
    String? balance,
  }) =>
      ExtractItemModel(
        dateEvent: dateEvent ?? this.dateEvent,
        valueTransf: valueTransf ?? this.valueTransf,
        balance: balance ?? this.balance,
      );
}
