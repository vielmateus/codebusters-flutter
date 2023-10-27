import 'package:flutter_hackaton/app/core/data/wallet/model/wallet_model.dart';

abstract class IWalletRepository {

  Future<WalletModel?> getByUser(int id);

  Future<void> save(WalletModel activity);  

  Future<List<WalletModel>> getAll();
}
