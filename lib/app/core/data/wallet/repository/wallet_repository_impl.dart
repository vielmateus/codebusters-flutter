import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_hackaton/app/core/data/wallet/model/wallet_model.dart';
import 'package:flutter_hackaton/app/core/data/wallet/repository/wallet_repository.dart';

class WalletRepositoryImpl implements IWalletRepository {
  static String tableName = "wallet";

  @override
  Future<List<WalletModel>> getAll() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(tableName).get();

    if (querySnapshot.docs.isEmpty) {
      return [];
    } else {
      List<WalletModel> list = [];

      for (var element in querySnapshot.docs) {
        list.add(WalletModel.fromMap(
            element.data() as Map<String, dynamic>, element.id));
      }
      return list;
    }
  }

  @override
  Future<WalletModel?> getByUser(int id) {
    // TODO: implement getByUser
    throw UnimplementedError();
  }

  @override
  Future<void> save(WalletModel activity) async {
    await FirebaseFirestore.instance
        .collection(tableName)
        .add(activity.toMap());
  }
}
