/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finance_tracker/providers/transactions_provider.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final transactionsData = Provider.of<TransactionProvider>(context);
    final recentTransactions = transactionsData.transactions
        .where((tx) => tx.date.isAfter(DateTime.now().subtract(Duration(days: 7))))
        .toList();

    // Group transactions by day and calculate total amount
    final groupedTransactionValues = List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = recentTransactions
          .where((tx) => tx.date.day == weekDay.day &&
              tx.date.month == weekDay.month &&
              tx.date.year == weekDay.year)
          .fold(0.0, (sum, item) => sum + item.amount);

      return {
        'day': weekDay.weekday,
        'amount': totalSum,
      };
    });

    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: 200,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: groupedTransactionValues.fold(
                  0.0, (max, item) => item['amount'] > max ? item['amount'] : max),
              barTouchData: BarTouchData(enabled: false),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (context, value) => const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  margin: 16,
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'M';
                      case 1:
                        return 'T';
                      case 2:
                        return 'W';
                      case 3:
                        return 'T';
                      case 4:
                        return 'F';
                      case 5:
                        return 'S';
                      case 6:
                        return 'S';
                      default:
                        return '';
                    }
                  },
                ),
              ),
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              barGroups: groupedTransactionValues.asMap().entries.map((entry) {
                return BarChartGroupData(
                  x: entry.key,
                  barRods: [
                    BarChartRodData(
                      y: entry.value['amount'],
                      colors: [Theme.of(context).primaryColor],
                      width: 22,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
*/