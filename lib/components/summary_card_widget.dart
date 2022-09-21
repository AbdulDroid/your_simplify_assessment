import 'package:flutter/material.dart';
import 'package:your_simplify_assessment/colors.dart';
import 'package:your_simplify_assessment/models/summary.dart';

class SummaryCard extends StatelessWidget {
  final Summary element;
  const SummaryCard({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: primaryColor,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.11))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Image.asset(element.icon),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      element.title,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      element.amount,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 24,
            ),
            Image.asset('assets/images/eyeOff.png')
          ],
        ),
      ),
    );
  }
}
