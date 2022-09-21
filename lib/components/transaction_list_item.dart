import 'package:flutter/material.dart';
import 'package:your_simplify_assessment/colors.dart';

import '../models/transaction.dart';

class TransactionListItem extends StatelessWidget {
  final Transaction data;
  const TransactionListItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Container(
            height: 34.0,
            width: 34.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: data.plus ? plusOverlayColor : minusOverlayColor,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                data.plus
                    ? 'assets/images/gift.png'
                    : 'assets/images/gift_alt.png',
                color: data.plus ? plusColor : minusColor,
                colorBlendMode: BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Text(
            data.title,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 14.0),
          Text(
            data.date,
            style: const TextStyle(
                fontSize: 9.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF828185)),
          ),
          const SizedBox(width: 48.0),
          Text(
            data.time,
            style: const TextStyle(
                fontSize: 9.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF828185)),
          ),
          const SizedBox(width: 15.0),
          Text(
            '${data.plus ? '+' : '-'}${data.points}points',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: data.plus ? plusColor : minusColor,
            ),
          )
        ],
      ),
    );
  }
}
