import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'RTX 3080',
      amount: 850.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'HPQ Stocks',
      amount: 10000.00,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String item, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: item,
        amount: amount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
