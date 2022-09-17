import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      title: 'Shose',
      id: 't1',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      title: 'Bag',
      id: 't2',
      amount: 45.92,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String titleTx, double amountTx) {
    final newTx = Transaction(
      title: titleTx,
      amount: amountTx,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
