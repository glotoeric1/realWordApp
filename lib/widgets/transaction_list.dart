import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
//import 'package:realworldapp/widgets/user_transaction.dart';

//Custom widget
import '../models/transaction.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return ListView.builder(
      itemBuilder: (cTx, index) {
        return TransactionItem(
          transaction: transactions[index],
          mediaQuery: mediaQuery,
          deleteTx: deleteTx,
        );
      },
      itemCount: transactions.length,
    );
  }
}
