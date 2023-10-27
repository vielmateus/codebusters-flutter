import 'package:flutter_hackaton/app/core/data/wallet/model/wallet_model.dart';
import 'package:flutter_hackaton/app/core/data/wallet/repository/wallet_repository_impl.dart';

class WalletService {
  Future<void> saveWallet(WalletModel adult) async {
    final repository = WalletRepositoryImpl();

    repository.save(adult);
  }

  Future<List<WalletModel>> getAll() async {
    final repository = WalletRepositoryImpl();
    
    var list = repository.getAll();

    return list;
  }
}