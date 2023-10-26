import 'package:flutter_hackaton/app/core/data/adult/model/adult_model.dart';
import 'package:flutter_hackaton/app/core/data/adult/service/adult_service.dart';
import 'package:mobx/mobx.dart';
part 'adult_store.g.dart';

class AdultStore = AdultStoreBase with _$AdultStore;

abstract class AdultStoreBase with Store {
  //atributos do objeto que serão usados pela tela
  @observable
  String nome = '';
  @observable
  String email = '';
  @observable
  String senha = '';
  @observable
  String cpf = '';

  //tratativas do formulário
  @observable
  bool processing = false;

  @observable
  String errorMessage = "";

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  @action
  Future<void> save() async {
    final service = AdultService();
    service.saveAdult(
      AdultModel(
        nome: nome,
        email: email,
        senha: senha,
        cpf: cpf,
      ),
    );
  }

  @action
  void setNome(String nome) {
    this.nome = nome;
  }

  @action
  void setEmail(String email) {
    this.email = email;
  }

  @action
  void setSenha(String senha) {
    this.senha = senha;
  }

  @action
  void setCPF(String cpf) {
    this.cpf = cpf;
  }
}
