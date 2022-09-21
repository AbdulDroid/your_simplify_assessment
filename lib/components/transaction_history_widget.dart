import 'package:flutter/material.dart';
import 'package:your_simplify_assessment/colors.dart';
import 'package:your_simplify_assessment/components/transaction_list_item.dart';
import 'package:your_simplify_assessment/data/transaction_data.dart';
import 'package:your_simplify_assessment/models/transaction.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = getTransactions();
    return SizedBox(
      height: 379.0,
      child: Card(
        margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 12.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Transaction History',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 19.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: const Color(0xFF0D073C),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8.5),
                        textStyle: const TextStyle(
                            fontSize: 8, fontWeight: FontWeight.w600),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        elevation: 1,
                      ),
                      child: Row(
                        children: [
                          const Text('This Month'),
                          const SizedBox(width: 3),
                          Image.asset('assets/images/arrow-down.png')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 142,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 8.0,
                              fontWeight: FontWeight.bold,
                              color: tableHeadColor,
                            ),
                          ),
                        ),
                        Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 8.0,
                            fontWeight: FontWeight.bold,
                            color: tableHeadColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 76.0,
                        child: Row(
                          children: [
                            Text(
                              'Time',
                              style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.bold,
                                color: tableHeadColor,
                              ),
                            ),
                            const SizedBox(width: 23.0),
                            Text(
                              'Points',
                              style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.bold,
                                color: tableHeadColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32.0),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: transactions.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10.0);
                  },
                  itemBuilder: (context, index) {
                    return TransactionListItem(data: transactions[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
