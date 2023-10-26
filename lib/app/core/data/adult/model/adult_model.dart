import 'dart:convert';

AdultModel adultModelFromJson(String str) =>
    AdultModel.fromJson(json.decode(str));

String adultModelToJson(AdultModel data) => json.encode(data.toJson());

class AdultModel {
  String nome;
  String email;
  String senha;
  String cpf;

  AdultModel(
      {required this.nome,
      required this.email,
      required this.senha,
      required this.cpf});

  factory AdultModel.fromJson(Map<String, dynamic> json) => AdultModel(
        nome: json["uf"],
        email: json["gia"],
        senha: json["ibge"],
        cpf: json["ibge"],
      );

  Map<String, dynamic> toJson() => {
        "dateEvent": nome,
        "valueTransf": email,
        "balance": senha,
        "cpf": cpf,
      };

  AdultModel copyWith({
    String? nome,
    String? email,
    String? senha,
    String? cpf,
  }) =>
      AdultModel(
        nome: nome ?? this.nome,
        email: email ?? this.email,
        senha: senha ?? this.senha,
        cpf: cpf ?? this.cpf,
      );
}
