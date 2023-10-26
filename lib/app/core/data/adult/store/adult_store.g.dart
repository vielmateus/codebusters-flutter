// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adult_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AdultStore on AdultStoreBase, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: 'AdultStoreBase.hasError'))
      .value;

  late final _$nomeAtom = Atom(name: 'AdultStoreBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$emailAtom = Atom(name: 'AdultStoreBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$senhaAtom = Atom(name: 'AdultStoreBase.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$cpfAtom = Atom(name: 'AdultStoreBase.cpf', context: context);

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  late final _$processingAtom =
      Atom(name: 'AdultStoreBase.processing', context: context);

  @override
  bool get processing {
    _$processingAtom.reportRead();
    return super.processing;
  }

  @override
  set processing(bool value) {
    _$processingAtom.reportWrite(value, super.processing, () {
      super.processing = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: 'AdultStoreBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('AdultStoreBase.save', context: context);

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$AdultStoreBaseActionController =
      ActionController(name: 'AdultStoreBase', context: context);

  @override
  void setNome(String nome) {
    final _$actionInfo = _$AdultStoreBaseActionController.startAction(
        name: 'AdultStoreBase.setNome');
    try {
      return super.setNome(nome);
    } finally {
      _$AdultStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$AdultStoreBaseActionController.startAction(
        name: 'AdultStoreBase.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$AdultStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String senha) {
    final _$actionInfo = _$AdultStoreBaseActionController.startAction(
        name: 'AdultStoreBase.setSenha');
    try {
      return super.setSenha(senha);
    } finally {
      _$AdultStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCPF(String cpf) {
    final _$actionInfo = _$AdultStoreBaseActionController.startAction(
        name: 'AdultStoreBase.setCPF');
    try {
      return super.setCPF(cpf);
    } finally {
      _$AdultStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
senha: ${senha},
cpf: ${cpf},
processing: ${processing},
errorMessage: ${errorMessage},
hasError: ${hasError}
    ''';
  }
}
