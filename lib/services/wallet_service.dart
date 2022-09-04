import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wallet/models/wallet.dart';

class WalletService {
  final CollectionReference _db =
      FirebaseFirestore.instance.collection('wallet');

  Future<List<Wallet>> getWallets(String uid) async {
    List<Wallet> wallets = [];

    try {
      _db.withConverter(
        fromFirestore: (snapshot, _) => Wallet.fromJson({
          ...snapshot.data()!,
          'id': snapshot.id
        }),
        toFirestore: (wallet, _) => {},
      );
    } catch (e, stack) {
      log(e.toString(), name: 'WalletService: getWallets');
    }

    print(wallets);

    return wallets;
  }
}
