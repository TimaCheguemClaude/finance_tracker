class Transaction {
  final int? id;
  final double amount;
  final String description;
  final String category;
  final DateTime date;
  final bool isExpense;

  Transaction({
    this.id,
    required this.amount,
    required this.description,
    required this.category,
    required this.date,
    required this.isExpense,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'description': description,
      'category': category,
      'date': date.toIso8601String(),
      'isExpense': isExpense ? 1 : 0,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'],
      amount: map['amount'],
      description: map['description'],
      category: map['category'],
      date: DateTime.parse(map['date']),
      isExpense: map['isExpense'] == 1,
    );
  }
}