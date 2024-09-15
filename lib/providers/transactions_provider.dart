// lib/providers/transactions_provider.dart
/*
import 'package:flutter/foundation.dart';
import 'package:finance_tracker/models/transaction.dart';
import 'package:finance_tracker/services/database_service.dart';

class TransactionsProvider with ChangeNotifier {
  List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  Future<void> loadTransactions() async {
    _transactions = await DatabaseService.instance.getTransactions();
    notifyListeners();
  }

  Future<void> addTransaction(Transaction transaction) async {
    final newTransaction = await DatabaseService.instance.insertTransaction(transaction);
    _transactions.add(newTransaction);
    notifyListeners();
  }

  Future<void> updateTransaction(Transaction transaction) async {
    final index = _transactions.indexWhere((t) => t.id == transaction.id);
    if (index >= 0) {
      await DatabaseService.instance.updateTransaction(transaction);
      _transactions[index] = transaction;
      notifyListeners();
    }
  }

  Future<void> deleteTransaction(int id) async {
    final index = _transactions.indexWhere((t) => t.id == id);
    if (index >= 0) {
      await DatabaseService.instance.deleteTransaction(id);
      _transactions.removeAt(index);
      notifyListeners();
    }
  }
}*/