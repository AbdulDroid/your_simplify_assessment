import 'package:your_simplify_assessment/models/transaction.dart';

List<Transaction> getTransactions() {
  return [
    Transaction(title: 'SuperMart', date: '12/06/2022', time: '12:34', points: '50', plus: true),
    Transaction(title: 'SuperMart', date: '12/06/2022', time: '12:34', points: '50', plus: false),
    Transaction(title: 'SuperMart', date: '12/06/2022', time: '12:34', points: '50', plus: false),
    Transaction(title: 'SuperMart', date: '12/06/2022', time: '12:34', points: '50', plus: false),
    Transaction(title: 'SuperMart', date: '12/06/2022', time: '12:34', points: '50', plus: false),
  ];
}