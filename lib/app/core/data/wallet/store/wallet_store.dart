import 'package:flutter_hackaton/app/core/data/wallet/model/wallet_model.dart';
import 'package:flutter_hackaton/app/core/data/wallet/service/wallet_service.dart';
import 'package:mobx/mobx.dart';
part 'wallet_store.g.dart';

class WalletStore = WalletStoreBase with _$WalletStore;

abstract class WalletStoreBase with Store {
  @observable
  String id = '';
  @observable
  String adult = '';
  @observable
  double values = 0.0;

  @action
  void setAdult(String adult) {
    adult = adult;
  }

  @action
  void setValues(double values) {
    values = values;
  }

  @computed
  bool get inInsert => id.trim().isEmpty;

  Future<void> save() async {
    final service = WalletService();
    service.saveWallet(
      (inInsert
          ? WalletModel(
              adult: adult,
              values: values,
            )
          : WalletModel(
              id: id,
              adult: adult,
              values: values,
            )),
    );
  }
}
